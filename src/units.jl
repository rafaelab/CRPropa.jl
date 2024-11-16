module Units

export 
	meter, second, kilogram, ampere, mol, kelvin,
	newton, pascal, joule, tesla, volt, coulomb, hertz, 
	rad, deg,
	yocto, zepto, atto, femto, pico, nano, micro, milli,
	kilo, mega, giga, tera, peta, exa, zetta, yotta,
	eplus, c_light, c_squared, amu, mass_proton, mass_neutron, mass_electron, 
	h_planck, k_boltzmann, mu0, epsilon0, alpha_finestructure, radius_electron, sigma_thomson,
	gauss, microgauss, nanogauss, 
	muG, nG, erg,
	electronvolt, kiloelectronvolt, megaelectronvolt, gigaelectronvolt, teraelectronvolt, petaelectronvolt, exaelectronvolt, 
	eV, keV, MeV, GeV, TeV, PeV, EeV,
	barn,
	au, ly, parsec, kiloparsec, megaparsec, gigaparsec, pc, kpc, Mpc, Gpc,
	kilometer, centimeter, 
	km, cm,
	nanosecond, microsecond, millisecond, minute, hour, 
	ns, mus, ms, sec,
	ccm



import ..CRPropa.crpropa



# SI units
const meter = crpropa.meter
const second = crpropa.second
const kilogram = crpropa.kilogram
const ampere = crpropa.ampere
const mol = crpropa.mol
const kelvin = crpropa.kelvin

# derived units
const newton = crpropa.newton
const pascal = crpropa.pascal
const joule = crpropa.joule
const tesla = crpropa.tesla
const volt = crpropa.volt
const coulomb = crpropa.coulomb
const hertz = crpropa.hertz
const rad = crpropa.rad
const deg = crpropa.deg

# SI Prefixes
const yocto = crpropa.yocto
const zepto = crpropa.zepto
const atto = crpropa.atto
const femto = crpropa.femto
const pico = crpropa.pico
const nano = crpropa.nano
const micro = crpropa.micro
const milli = crpropa.milli

const kilo = crpropa.kilo
const mega = crpropa.mega
const giga = crpropa.giga
const tera = crpropa.tera
const peta = crpropa.peta
const exa = crpropa.exa
const zetta = crpropa.zetta
const yotta = crpropa.yotta

# physical constants
const eplus = crpropa.eplus
const c_light = crpropa.c_light
const c_squared = crpropa.c_squared
const amu = crpropa.amu
const mass_proton = crpropa.mass_proton
const mass_neutron = crpropa.mass_neutron
const mass_electron = crpropa.mass_electron
const h_planck = crpropa.h_planck
const k_boltzmann = crpropa.k_boltzmann
const mu0 = crpropa.mu0
const epsilon0 = crpropa.epsilon0
const alpha_finestructure = crpropa.alpha_finestructure
const radius_electron = crpropa.radius_electron
const sigma_thomson = crpropa.sigma_thomson

# gaussian units
const gauss = crpropa.gauss
const microgauss = crpropa.microgauss
const nanogauss = crpropa.nanogauss
const muG = crpropa.muG
const nG = crpropa.nG
const erg = crpropa.erg


# electronvolt
const electronvolt = crpropa.electronvolt
const kiloelectronvolt = crpropa.kiloelectronvolt
const megaelectronvolt = crpropa.megaelectronvolt
const gigaelectronvolt = crpropa.gigaelectronvolt
const teraelectronvolt = crpropa.teraelectronvolt
const petaelectronvolt = crpropa.petaelectronvolt
const exaelectronvolt = crpropa.exaelectronvolt
const eV = crpropa.eV
const keV = crpropa.keV
const MeV = crpropa.MeV
const GeV = crpropa.GeV
const TeV = crpropa.TeV
const PeV = crpropa.PeV
const EeV = crpropa.EeV

# cross section
const barn = crpropa.barn


# astronomical distances
const au = crpropa.au
const ly = crpropa.ly
const parsec = crpropa.parsec
const kiloparsec = crpropa.kiloparsec
const megaparsec = crpropa.megaparsec
const gigaparsec = crpropa.gigaparsec
const pc = crpropa.pc
const kpc = crpropa.kpc
const Mpc = crpropa.Mpc
const Gpc = crpropa.Gpc


# meter
const kilometer = 1000 * meter
const centimeter = 0.01 * meter
const km = kilometer
const cm = centimeter

# second
const nanosecond = crpropa.nanosecond
const microsecond = crpropa.microsecond
const millisecond = crpropa.millisecond
const minute = crpropa.minute
const hour = crpropa.hour
const ns = nanosecond
const mus = microsecond
const ms = millisecond
const sec = second

# volume
const ccm = crpropa.ccm




end