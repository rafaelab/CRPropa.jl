module CRPropa

using Reexport
@reexport using PythonCall

import PythonCall:
	pynew,
	pycopy!



# define and export `crpropa` module
const crpropa = pynew()


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


# Macro to define constants with pynew
macro defineObjects(name)
	quote
		const $(esc(name)) = pynew()
	end
end

for item in items
	@eval @defineObjects $(item)
end


macro linkObjects(name)
	quote
		pycopy!($(esc(name)), crpropa.$(Symbol("$name")))
	end
end

function __init__()
    pycopy!(crpropa, pyimport("crpropa"))

	for name in items
		@eval @linkObjects $(name)
	end
end


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
