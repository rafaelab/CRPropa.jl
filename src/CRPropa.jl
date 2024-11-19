module CRPropa

using Reexport
@reexport using PythonCall

import PythonCall:
	pynew,
	pycopy!


# ------------------------------------------------------------------------------------------------#
#
# define and export `crpropa` module
const crpropa = pynew()
export crpropa


# ------------------------------------------------------------------------------------------------#
#
include("objects.jl")


# ------------------------------------------------------------------------------------------------#
#
@doc"""
Define a constant object with pynew.
This is a macro because we need the object to be at top level.
It creates, in reality, a pointer to the Python object, which is then linked to the actual CRPropa object.
"""
macro defineObjects(name)
	quote
		const $(esc(name)) = pynew()
	end
end

# define the objects
for item in items
	@eval @defineObjects $(item)
end


# ------------------------------------------------------------------------------------------------#
#
@doc"""
Link the objects to the CRPropa module.
This allows us to use the objects as if they were defined in Julia.
"""
macro linkObjects(name)
	nameStr = string(name)
	isAvailable = Symbol(name) ∈ optionalItems
	quote
		try
			pycopy!($(esc(name)), crpropa.$(Symbol("$name")))
		catch
			if ! $isAvailable
				@warn "Error linking " * $(nameStr) * ". CRPropa doesn't seem to contain it."
			end
		end
	end
end


# ------------------------------------------------------------------------------------------------#
#
@doc"""
This function is not exported.
It is called when loading the module.
It is essential to handle the PythonCall objects.
"""
function __init__()
    pycopy!(crpropa, pyimport("crpropa"))

	for name in items
		@eval @linkObjects $(name)
	end
end



# ------------------------------------------------------------------------------------------------#
#
# export the objects to the module
for name in items
	@eval export $(name)
end



end # module CRPropa
