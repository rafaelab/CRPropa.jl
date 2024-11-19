# these items are the objects that we want to link to the CRPropa module
# after they are linked, we can use them as if they were defined in Julia
items = (
	# Candidate.h
	:Candidate, 
	
	# Common.h
	:interpolate,
	:interpolate2d,
	:interpolateEquidistant,

	# Cosmology.h
	:setCosmologyParameters,
	:hubbleRate,
	:omegaL,
	:omegaM,
	:H0,
	:comovingDistance2Redshift,
	:redshift2ComovingDistance,
	:luminosityDistance2Redshift,
	:redshift2LuminosityDistance,
	:lightTravelDistance2Redshift,
	:redshift2LightTravelDistance,
	:comoving2LightTravelDistance,
	:lightTravel2ComovingDistance,

	# EmissionMap
	# Geometry

	# Grid.h
	:GridProperties,
	:Grid1d,
	:Grid1f,
	:Grid3d,
	:Grid3f,

	# GridTools.h
	:meanFieldVector,
	:meanFieldStrength,
	:rmsFieldStrength,
	:rmsFieldStrengthPerAxis,
	:scaleGrid,
	:fromMagneticField,
	:fromMagneticFieldStrength,
	:loadGrid,
	:dumpGrid,
	:loadGridFromTxt,
	:dumpGridToTxt,
	:gridPowerSpectrum,

	# Logging.h
	# Module.h

	# ModuleList.h
	:ModuleList,

	# ParticleID.h
	:nucleusId,
	:chargeNumber,
	:massNumber,
	:isNucleus,
	:convertIdToName,

	# ParticleMass.h
	:particleMass,
	:nuclearMass,

	# ParticleState.h
	:ParticleState,
	
	# PhotonBackground.h
	:TabularPhotonField,
	:BlackbodyPhotonField, 
	:IRB_Kneiske04,
	:IRB_Stecker05,
	:IRB_Franceschini08,
	:IRB_Finke10,
	:IRB_Dominguez11,
	:IRB_Gilmore12,
	:IRB_Stecker16_lower,
	:IRB_Stecker16_upper,
	:IRB_Saldana21,
	:IRB_Saldana21_lower,
	:IRB_Saldana21_upper,
	:IRB_Finke22,
	:URB_Protheroe96,
	:URB_Fixsen11,
	:URB_Nitu21,
	:CMB,

	# Random.h
	:Random,

	# Source.h
	:Source,
	:SourceList,
	:SourceParticleType,
	:SourceMultipleParticleTypes,
	:SourceEnergy,
	:SourcePowerLawSpectrum,
	:SourceComposition,
	:SourcePosition,
	:SourceMultiplePositions,
	:SourceUniformSphere,
	:SourceUniformHollowSphere,
	:SourceUniformShell,
	:SourceUniformBox,
	:SourceUniformCylinder,
	:SourceSNRDistribution,
	:SourcePulsarDistribution,
	:SourceUniform1D,
	:SourceDensityGrid,
	:SourceDensityGrid1D,
	:SourceDirectedEmission,
	:SourceLambertDistributionOnSphere,
	:SourceDirection,
	:SourceEmissionMap,
	:SourceEmissionCone,
	:SourceRedshift,
	:SourceUniformRedshift,
	:SourceRedshiftEvolution,
	:SourceRedshift1D,
	:SourceGenericComposition,
	:SourceTag,
	:SourceMassDistribution,

	# Units.h
	:meter, 
	:second,
	:kilogram,
	:ampere,
	:mol,
	:kelvin,
	:newton,
	:pascal,
	:joule,
	:tesla,
	:volt,
	:coulomb,
	:hertz,
	:rad,
	:deg,
	:eplus,
	:c_light,
	:c_squared,
	:amu,
	:mass_proton,
	:mass_neutron,
	:mass_electron,
	:h_planck,
	:k_boltzmann,
	:mu0,
	:epsilon0,
	:alpha_finestructure,
	:radius_electron,
	:sigma_thomson,
	:gauss,
	:microgauss,
	:nanogauss,
	:muG,
	:nG,
	:eV,
	:keV,
	:MeV,
	:GeV,
	:TeV,
	:PeV,
	:EeV,
	:barn,
	:au,
	:ly,
	:parsec,
	:kiloparsec,
	:megaparsec,
	:gigaparsec,
	:pc,
	:kpc,
	:Mpc,
	:Gpc,
	:kilometer,
	:centimeter,
	:km,
	:cm,
	:nanosecond,
	:microsecond,
	:millisecond,
	:minute,
	:hour,
	:ns,
	:mus,
	:ms,
	:sec,
	:ccm,

	# Vector3.h
	:Vector3d,
	:Vector3f,

	# advectionField/AdvectionField.h
	:AdvectionField,
	:AdvectionFieldList,
	:UniformAdvectionField,
	:ConstantSphericalAdvectionField,
	:SphericalAdvectionField,
	:OneDimensionalCartesianShock,
	:OneDimensionalSphericalShock,
	:ObliqueAdvectionShock,
	:SphericalAdvectionShock,

	# magneticField/MagneticField.h
	:PeriodicMagneticField,
	:MagneticFieldEvolution,
	:UniformMagneticField,
	:MagneticDipoleField,
	:RenormalizeMagneticField,

	# magneticField/MagneticFieldGrid.h
	:MagneticFieldGrid,
	:ModulatedMagneticFieldGrid,

	# magneticField/PolarizedSingleModeMagneticField.h
	:PolarizedSingleModeMagneticField,

	# magneticField/QuimbyMagneticField.h
	:QuimbyMagneticField,
	:QuimbyMagneticFieldAdapter,

	# magneticField/GalacticMagneticField.h
	:ToroidalHaloField,
	:LogarithmicSpiralField,

	# magneticField/ArchimedeanSpiralField.h
	:ArchimedeanSpiralField,

	# magneticField/CMZField.h
	:CMZField,

	# magneticField/JF12Field.h
	:JF12Field,
	:PlanckJF12bField,

	# magneticField/JF12FieldSolenoidal.h
	:JF12FieldSolenoidal,

	# magneticField/PT11Field.h
	:PT11Field,

	# magneticField/TF17Field.h
	:TF17Field,

	# magneticField/UF23Field.h
	:UF23Field,	
	
	# magneticField/turbulentField/GridTurbulence.h
	:GridTurbulence,

	# magneticField/turbulentField/HelicalGridTurbulence.h
	:HelicalGridTurbulence,
	:initHelicalGridTurbulence,

	# magneticField/turbulentField/PlaneWaveTurbulence.h
	:PlaneWaveTurbulence,

	# magneticField/turbulentField/SimpleGridTurbulence.h
	:SimpleTurbulenceSpectrum,
	:SimpleGridTurbulence,
	:turbulentCorrelationLength,
	:initTurbulence,

	# magneticField/turbulentField/TurbulenceSpectrum.h
	:TurbulenceSpectrum,
	:TurbulentField,

	# magneticField/magneticLens/MagneticLens.h
	# magneticField/magneticLens/ModelMatrix.h
	# magneticField/magneticLens/ParticleMapsContainer.h
	# magneticField/magneticLens/Pixelization.h

	# module/Acceleration.h
	:StepLengthModifier,
	:SecondOrderFermi,
	:DirectedFlowScattering,
	:DirectedFlowOfScatterCenters,
	:QuasiLinearTheory,
	:ParticleSplitting,

	# module/AdiabaticCooling.h
	:AdiabaticCooling,

	# module/Boundary.h
	:PeriodicBox,
	:ReflectiveBox,
	:CubicBoundary,
	:SphericalBoundary,
	:EllipsoidalBoundary,
	:CylindricalBoundary,

	# module/BreakCondition.h
	:MaximumTrajectoryLength,
	:MinimumEnergy,
	:MinimumRigidity,
	:MinimumRedshift,
	:MinimumChargeNumber,
	:MinimumEnergyPerParticleId,
	:DetectionLength,

	# module/CandidateSplitting.h
	:CandidateSplitting,

	# module/DiffusionSDE.h
	:DiffusionSDE,

	# module/PropagationCK.h
	:PropagationCK,

	# module/PropagationBP.h
	:PropagationBP,

	# module/SimplePropagation.h
	:SimplePropagation,

	# module/MomentumDiffusion.h
	:ConstantMomentumDiffusion,

	# module/ParticleCollector.h
	:ParticleCollector,

	# module/Redshift.h
	:Redshift,
	:FutureRedshift,

	# module/EM*.h
	:EMInverseComptonScattering,
	:EMPairProduction,
	:EMDoublePairProduction,
	:EMTripletPairProduction,

	# module/PhotoPionProduction.h
	:PhotoPionProduction,

	# module/PhotoDisintegration.h
	:PhotoDisintegration,

	# module/ElectronPairProduction.h
	:ElectronPairProduction,
	
	# module/NuclearDecay.h
	:NuclearDecay,

	# module/SynchrotronRadiation.h
	:SynchrotronRadiation,

	# module/Observer.h
	:Observer,
	:ObserverDetectAll,
	:ObserverSurface,
	:ObserverTracking,
	:Observer1D,
	:ObserverRedshiftWindow,
	:ObserverInactiveVeto,
	:ObserverNucleusVeto,
	:ObserverNeutrinoVeto,
	:ObserverPhotonVeto,
	:ObserverElectronVeto,
	:ObserverParticleIdVeto,
	:ObserverTimeEvolution,

	# module/Output.h
	:Output,

	# module/HDF5Output.h
	:HDF5Output,

	# module/OutputShell.h
	:ShellOutput,

	# module/TextOutput.h
	:TextOutput,

	# module/RestrictToRegion.h
	:RestrictToRegion,

	# module/Tools.h
	:PerformanceModule,
	:ParticleFilter,
	:EmissionMapFiller,

	# massDistribution/*.h
	:ConstantDensity,
	:Cordes,
	:Ferriere,
	:Nakanishi,
	:DensityList,
	)


optionalItems = (
	# Source.h
	:SourceGenericComposition,

	# magneticField/QuimbyMagneticField.h
	:QuimbyMagneticField,
	:QuimbyMagneticFieldAdapter,

	# magneticField/turbulentField/*.h (using FFTW3)
	:GridTurbulence,
	:HelicalGridTurbulence,
	:initHelicalGridTurbulence,

	# module/HDF5Output.h
	:HDF5Output,

	# module/magneticField/MagneticField.h
	:RenormalizeMagneticField,
)