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

# these items are the objects that we want to link to the CRPropa module
items = (
	:Candidate, 
	
	:eV,
	:MeV,
	:GeV,
	:TeV,
	:PeV,
	:EeV,
	:pc,
	:kpc,
	:Mpc,
	:Gpc,
	:gauss,
	:muG,
	:nG
	)


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
	quote
		pycopy!($(esc(name)), crpropa.$(Symbol("$name")))
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
# export 
# 	Candidate,
# 	EeV
# 	MeV,
# 	GeV,
# 	TeV,
# 	PeV,
# 	EeV
# 	pc,
# 	kpc,
# 	Mpc,
# 	Gpc,
# 	gauss,
# 	microGauss,
# 	nanoGauss



end # module CRPropa
