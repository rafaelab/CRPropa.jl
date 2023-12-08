
module CRPropaJl

using CxxWrap

@wrapmodule(() -> "/Users/rab/Dropbox/softwares/CRPropa/CRPropa.jl/build/libcrpropajl.dylib", :define_julia_module)

function __init__()
	@initcxx
end




end

