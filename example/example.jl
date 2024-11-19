push!(LOAD_PATH, "../")

using CRPropa


# general simulation options
nEvents = 10000
α = 1. # simulated source spectral index
Emin, Emax = 1 * EeV, 1000 * EeV # source energy range
Dmin, Dmax = 0., 1000 * Mpc # distance
Δℓmin, Δℓmax = 0.1 * kpc, 10 * Mpc # step size
filename = joinpath(@__DIR__, "sim1d_example.txt")

# photon backgrounds for interactions
cmb = CMB()
ebl = IRB_Saldana21()

# propagator
propagator = SimplePropagation(Δℓmin, Δℓmax)

# source properties
sourceDistribution = SourceUniform1D(Dmin, Dmax)
sourceSpectrum = SourcePowerLawSpectrum(Emin, Emax, - α)
sourceRedshift = SourceRedshift1D()
sourceProperties = (sourceDistribution, sourceSpectrum, sourceRedshift)

# define source
source = Source()
for srcProp ∈ sourceProperties
	source.add(srcProp)
end

# output 
output = TextOutput(filename, Output.Event1D)

# observer 
observerType = Observer1D()
observer = Observer()
observer.add(observerType)
observer.onDetection(output)

# interactions
al = Redshift()
pppCMB = PhotoPionProduction(cmb)
pppEBL = PhotoPionProduction(ebl)
eppCMB = ElectronPairProduction(cmb)
eppEBL = ElectronPairProduction(ebl)
pdCMB = PhotoDisintegration(cmb)
pdEBL = PhotoDisintegration(ebl)
nd = NuclearDecay()
interactions = (al, pppCMB, pppEBL, eppCMB, eppEBL, pdCMB, pdEBL, nd)

# break conditions
minimumEnergy = MinimumEnergy(1 * EeV)
maximumTrajectoryLength = MaximumTrajectoryLength(4000 * Mpc) # redundant; just for demonstration
breakConditions = (minimumEnergy, maximumTrajectoryLength)


# simulation setup
sim = ModuleList()
sim.add(propagator)

for interaction ∈ interactions
	sim.add(interaction)
end

for breakCondition ∈ breakConditions
	sim.add(breakCondition)
end

sim.add(observer)


# run simulation
sim.setShowProgress(true)
sim.run(source, nEvents, true)


# (if output remains open, there might be some memory leaks)
output.close()