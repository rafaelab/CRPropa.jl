# CRPropa.jl

This is a simple Julia wrapper for [CRPropa](https://crpropa.desy.de/).
It enables the propagation of cosmic rays, gamma rays, electrons, and neutrinos, in Galactic and extragalactic environments, taking into account interactions with ambient photons and gas, as well as magnetic fields.

CRPropa is written in C++ with Python bindings.
`CRPropa.jl` uses PythonCall to wrap CRPropa's Python bindings. 
By doing this, CRPropa can be used almost exactly like in Python.
This is, admittedly, not efficient, but it circumvents the difficulties in translating C++ directly to Julia.

Note that due to the fact that PythonCall acts as an intermediate, type conversions are necessary, depending on the specific task at hand.


:warning: A new version that uses CRPropa's C++ library is currently under development.












