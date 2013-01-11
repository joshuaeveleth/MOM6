REENTRANT_X = False             !   [Boolean] default = True
                                ! If true, the domain is zonally reentrant.
REENTRANT_Y = False             !   [Boolean] default = False
                                ! If true, the domain is meridionally reentrant.
TRIPOLAR_N = False              !   [Boolean] default = False
                                ! Use tripolar connectivity at the northern edge of the
                                ! domain.  With TRIPOLAR_N, NIGLOBAL must be even.
SYMMETRIC_MEMORY_ = False       !   [Boolean]
                                ! If defined, the velocity point data domain includes
                                ! every face of the thickness points. In other words,
                                ! some arrays are larger than others, depending on where
                                ! they are on the staggered grid.  Also, the starting
                                ! index of the velocity-point arrays is usually 0, not 1.
                                ! This can only be set at compile time.
NONBLOCKING_UPDATES = False     !   [Boolean] default = False
                                ! If true, non-blocking halo updates may be used.
STATIC_MEMORY_ = False          !   [Boolean]
                                ! If STATIC_MEMORY_ is defined, the principle variables
                                ! will have sizes that are statically determined at
                                ! compile time.  Otherwise the sizes are not determined
                                ! until run time. The STATIC option is substantially
                                ! faster, but does not allow the PE count to be changed
                                ! at run time.  This can only be set at compile time.
NIHALO = 4                      ! default = 2
                                ! The number of halo points on each side in the
                                ! x-direction.  With STATIC_MEMORY_ this is set as NIHALO_
                                ! in MOM_memory.h at compile time; without STATIC_MEMORY_
                                ! the default is NIHALO_ in MOM_memory.h (if defined) or 2.
NJHALO = 4                      ! default = 2
                                ! The number of halo points on each side in the
                                ! y-direction.  With STATIC_MEMORY_ this is set as NJHALO_
                                ! in MOM_memory.h at compile time; without STATIC_MEMORY_
                                ! the default is NJHALO_ in MOM_memory.h (if defined) or 2.
NIGLOBAL = 80                   !
                                ! The total number of thickness grid points in the
                                ! x-direction in the physical domain. With STATIC_MEMORY_
                                ! this is set in MOM_memory.h at compile time.
NJGLOBAL = 4                    !
                                ! The total number of thickness grid points in the
                                ! x-direction in the physical domain. With STATIC_MEMORY_
                                ! this is set in MOM_memory.h at compile time.
NIPROC = 2                      !
                                ! The number of processors in the x-direction. With
                                ! STATIC_MEMORY_ this is set in MOM_memory.h at compile time.
NJPROC = 1                      !
                                ! The number of processors in the x-direction. With
                                ! STATIC_MEMORY_ this is set in MOM_memory.h at compile time.
NIPROC_IO = 1                   ! default = 0
                                ! The number of processors used for I/O in the
                                ! x-direction, or 0 to equal NIPROC.
NJPROC_IO = 1                   ! default = 0
                                ! The number of processors used for I/O in the
                                ! y-direction, or 0 to equal NJPROC.
AVAILABLE_DIAGS_FILE = "available_diags.000000" ! default = "available_diags.000000"
                                ! A file into which to write a list of all available
                                ! ocean diagnostics that can be included in a diag_table.
    !  Parameters of module MOM_grid
        ! Parameters providing information about the vertical grid.
G_EARTH = 9.8                   !   [m s-2] default = 9.8
                                ! The gravitational acceleration of the Earth.
RHO_0 = 1035.0                  !   [kg m-3] default = 1035.0
                                ! The mean ocean density used with BOUSSINESQ true to
                                ! calculate accelerations and the mass for conservation
                                ! properties, or with BOUSSINSEQ false to convert some
                                ! parameters from vertical units of m to kg m-2.
FIRST_DIRECTION = 0             ! default = 0
                                ! An integer that indicates which direction goes first
                                ! in parts of the code that use directionally split
                                ! updates, with even numbers (or 0) used for x- first
                                ! and odd numbers used for y-first.
BOUSSINESQ = True               !   [Boolean] default = True
                                ! If true, make the Boussinesq approximation.
ANGSTROM = 1.0E-10              !   [m] default = 1.0E-10
                                ! The minumum layer thickness, usually one-Angstrom.
BATHYMETRY_AT_VEL = False       !   [Boolean] default = False
                                ! If true, there are separate values for the basin depths
                                ! at velocity points.  Otherwise the effects of of
                                ! topography are entirely determined from thickness points.
NK = 40                         !   [nondim]
                                ! The number of model layers.
    !  Parameters of module MOM
VERBOSITY = 2                   ! default = 2
                                ! Integer controlling level of messaging
                                !   0 = Only FATAL messages
                                !   2 = Only FATAL, WARNING, NOTE [default]
                                !   9 = All)
SPLIT = True                    !   [Boolean] default = True
                                ! Use the split time stepping if true.
ENABLE_THERMODYNAMICS = True    !   [Boolean] default = True
                                ! If true, Temperature and salinity are used as state
                                ! variables.
USE_EOS = True                  !   [Boolean] default = True
                                ! If true,  density is calculated from temperature and
                                ! salinity with an equation of state.  If USE_EOS is
                                ! true, ENABLE_THERMODYNAMICS must be true as well.
ADIABATIC = False               !   [Boolean] default = False
                                ! There are no diapycnal mass fluxes if ADIABATIC is
                                ! true. This assumes that KD = KDML = 0.0 and that
                                ! there is no buoyancy forcing, but makes the model
                                ! faster by eliminating subroutine calls.
BULKMIXEDLAYER = False          !   [Boolean] default = True
                                ! If true, use a Kraus-Turner-like bulk mixed layer
                                ! with transitional buffer layers.  Layers 1 through
                                ! NKML+NKBL have variable densities. There must be at
                                ! least NKML+NKBL+1 layers if BULKMIXEDLAYER is true.
                                ! The default is the same setting as ENABLE_THERMODYNAMICS.
THICKNESSDIFFUSE = False        !   [Boolean] default = False
                                ! If true, interfaces or isopycnal surfaces are diffused,
                                ! depending on the value of FULL_THICKNESSDIFFUSE.
THICKNESSDIFFUSE_FIRST = False  !   [Boolean] default = False
                                ! If true, do thickness diffusion before dynamics.
                                ! This is only used if THICKNESSDIFFUSE is true.
MIXEDLAYER_RESTRAT = False      !   [Boolean] default = False
                                ! If true, a density-gradient dependent re-stratifying
                                ! flow is imposed in the mixed layer.
                                ! This is only used if BULKMIXEDLAYER is true.
DEBUG = False                   !   [Boolean] default = False
                                ! If true, write out verbose debugging data.
DEBUG_TRUNCATIONS = False       !   [Boolean] default = False
                                ! If true, calculate all diagnostics that are useful for
                                ! debugging truncations.
DT = 300.0                      !   [s]
                                ! The (baroclinic) dynamics time step.  The time-step that
                                ! is actually used will be an integer fraction of the
                                ! forcing time-step (DT_FORCING in ocean-only mode or the
                                ! coupling timestep in coupled mode.)
DT_THERM = 900.0                !   [s] default = 300.0
                                ! The thermodynamic and tracer advection time step.
                                ! Ideally DT_THERM should be an integer multiple of DT
                                ! and less than the forcing or coupling time-step.
                                ! By default DT_THERM is set to DT.
BE = 0.7                        !   [nondim] default = 0.6
                                ! If SPLIT is true, BE determines the relative weighting
                                ! of a  2nd-order Runga-Kutta baroclinic time stepping
                                ! scheme (0.5) and a backward Euler scheme (1) that is
                                ! used for the Coriolis and inertial terms.  BE may be
                                ! from 0.5 to 1, but instability may occur near 0.5.
                                ! BE is also applicable if SPLIT is false and USE_RK2
                                ! is true.
BEGW = 0.0                      !   [nondim] default = 0.0
                                ! If SPILT is true, BEGW is a number from 0 to 1 that
                                ! controls the extent to which the treatment of gravity
                                ! waves is forward-backward (0) or simulated backward
                                ! Euler (1).  0 is almost always used.
                                ! If SPLIT is false and USE_RK2 is true, BEGW can be
                                ! between 0 and 0.5 to damp gravity waves.
HMIX = 20.0                     !   [m] default = 1.0
                                ! If BULKMIXEDLAYER is false, HMIX is the depth over
                                ! which to average to find surface properties like SST
                                ! and SSS, and over which the vertical viscosity and
                                ! diapycnal diffusivity are elevated.  HMIX is only used
                                ! directly if BULKMIXEDLAYER is false, but provides a
                                ! default value for other variables if BULKMIXEDLAYER is
                                ! true.
MIN_Z_DIAG_INTERVAL = 0.0       !   [s] default = 0.0
                                ! The minimum amount of time in seconds between
                                ! calculations of depth-space diagnostics. Making this
                                ! larger than DT_THERM reduces the  performance penalty
                                ! of regridding to depth online.
FLUX_BT_COUPLING = False        !   [Boolean] default = False
                                ! If true, use mass fluxes to ensure consistency between
                                ! the baroclinic and barotropic modes. This is only used
                                ! if SPLIT is true.
INTERPOLATE_P_SURF = False      !   [Boolean] default = False
                                ! If true, linearly interpolate the surface pressure
                                ! over the coupling time step, using the specified value
                                ! at the end of the step.
SSH_SMOOTHING_PASSES = 0.0      !   [nondim] default = 0.0
                                ! The number of Laplacian smoothing passes to apply to the
                                ! the sea surface height that is reported to the sea-ice.
DTBT_RESET_PERIOD = -1.0        !   [s] default = -1.0
                                ! The period between recalculations of DTBT (if DTBT <= 0).
                                ! If DTBT_RESET_PERIOD is negative, DTBT is set based
                                ! only on information available at initialization.  If
                                ! dynamic, DTBT will be set at least every forcing time
                                ! step, and if 0, every dynamics time step.  The default is
                                ! set by DT_THERM.  This is only used if SPLIT is true.
READJUST_BT_TRANS = False       !   [Boolean] default = False
                                ! If true, make a barotropic adjustment to the layer
                                ! velocities after the thermodynamic part of the step
                                ! to ensure that the interaction between the thermodynamics
                                ! and the continuity solver do not change the barotropic
                                ! transport.  This is only used if FLUX_BT_COUPLING and
                                ! SPLIT are true.
SPLIT_BOTTOM_STRESS = False     !   [Boolean] default = False
                                ! If true, provide the bottom stress calculated by the
                                ! vertical viscosity to the barotropic solver.
BT_USE_LAYER_FLUXES = True      !   [Boolean] default = True
                                ! If true, use the summed layered fluxes plus an
                                ! adjustment due to the change in the barotropic velocity
                                ! in the barotropic continuity equation.
FRAZIL = False                  !   [Boolean] default = False
                                ! If true, water freezes if it gets too cold, and the
                                ! the accumulated heat deficit is returned in the
                                ! surface state.  FRAZIL is only used if
                                ! ENABLE_THERMODYNAMICS is true.
DO_GEOTHERMAL = False           !   [Boolean] default = False
                                ! If true, apply geothermal heating.
BOUND_SALINITY = False          !   [Boolean] default = False
                                ! If true, limit salinity to being positive. (The sea-ice
                                ! model may ask for more salt than is available and
                                ! drive the salinity negative otherwise.)
C_P = 3925.0                    !   [J kg-1 K-1] default = 3991.86795711963
                                ! The heat capacity of sea water, approximated as a
                                ! constant. This is only used if ENABLE_THERMODYNAMICS is
                                ! true. The default value is from the TEOS-10 definition
                                ! of conservative temperature.
P_REF = 2.0E+07                 !   [Pa] default = 2.0E+07
                                ! The pressure that is used for calculating the coordinate
                                ! density.  (1 Pa = 1e4 dbar, so 2e7 is commonly used.)
                                ! This is only used if USE_EOS and ENABLE_THERMODYNAMICS
                                ! are true.
TIDES = False                   !   [Boolean] default = False
                                ! If true, apply tidal momentum forcing.
CHECK_BAD_SURFACE_VALS = False  !   [Boolean] default = False
                                ! If true, check the surface state for ridiculous values.
SAVE_INITIAL_CONDS = True       !   [Boolean] default = False
                                ! If true, write the initial conditions to a file given
                                ! by IC_OUTPUT_FILE.
IC_OUTPUT_FILE = "Initial_state" ! default = "MOM_IC"
                                ! The file into which to write the initial conditions.
    !  Parameters of module MOM_tracer
KHTR = 0.0                      !   [m2 s-1] default = 0.0
                                ! The background along-isopycnal tracer diffusivity.
KHTR_SLOPE_CFF = 0.0            !   [nondim] default = 0.0
                                ! The scaling coefficient for along-isopycnal tracer
                                ! diffusivity using a shear-based (Visbeck-like)
                                ! parameterization.  A non-zero value enables this param.
KHTR_MIN = 0.0                  !   [m2 s-1] default = 0.0
                                ! The minimum along-isopycnal tracer diffusivity.
KHTR_MAX = 0.0                  !   [m2 s-1] default = 0.0
                                ! The maximum along-isopycnal tracer diffusivity.
KHTR_PASSIVITY_COEFF = 0.0      !   [nondim] default = 0.0
                                ! The coefficient that scales deformation radius over
                                ! grid-spacing in passivity, where passiviity is the ratio
                                ! between along isopycnal mxiing of tracers to thickness mixing.
                                ! A non-zero value enables this parameterization.
KHTR_PASSIVITY_MIN = 0.5        !   [nondim] default = 0.5
                                ! The minimum passivity which is the ratio between
                                ! along isopycnal mxiing of tracers to thickness mixing.
DT = 300.0                      !   [s]
                                ! The (baroclinic) dynamics time step.
DIFFUSE_ML_TO_INTERIOR = False  !   [Boolean] default = False
                                ! If true, enable epipycnal mixing between the surface
                                ! boundary layer and the interior.
CHECK_DIFFUSIVE_CFL = False     !   [Boolean] default = False
                                ! If true, use enough iterations the diffusion to ensure
                                ! that the diffusive equivalent of the CFL limit is not
                                ! violated.  If false, always use 1 iteration.
EQN_OF_STATE = "LINEAR"         ! default = "WRIGHT"
                                ! EQN_OF_STATE determines which ocean equation of state
                                ! should be used.  Currently, the valid choices are
                                ! "LINEAR", "UNESCO", and "WRIGHT".
                                ! This is only used if USE_EOS is true.
RHO_T0_S0 = 1000.0              !   [kg m-3] default = 1000.0
                                ! When EQN_OF_STATE=LINEAR,
                                ! this is the density at T=0, S=0.
DRHO_DT = 0.0                   !   [kg m-3 K-1] default = -0.2
                                ! When EQN_OF_STATE=LINEAR,
                                ! this is the partial derivative of density with
                                ! temperature.
DRHO_DS = 1.0                   !   [kg m-3 PSU-1] default = 0.8
                                ! When EQN_OF_STATE=LINEAR,
                                ! this is the partial derivative of density with
                                ! salinity.
EOS_QUADRATURE = False          !   [Boolean] default = False
                                ! If true, always use the generic (quadrature) code
                                ! code for the integrals of density.
TFREEZE_FORM = "LINEAR"         ! default = "LINEAR"
                                ! TFREEZE_FORM determines which expression should be
                                ! used for the freezing point.  Currently, the valid
                                ! choices are "LINEAR", "MILLERO_78".
TFREEZE_S0_P0 = 0.0             !   [deg C] default = 0.0
                                ! When TFREEZE_FORM=LINEAR,
                                ! this is the freezing potential temperature at
                                ! S=0, P=0.
DTFREEZE_DS = -0.054            !   [deg C PSU-1] default = -0.054
                                ! When TFREEZE_FORM=LINEAR,
                                ! this is the derivative of the freezing potential
                                ! temperature with salinity.
DTFREEZE_DP = 0.0               !   [deg C Pa-1] default = 0.0
                                ! When TFREEZE_FORM=LINEAR,
                                ! this is the derivative of the freezing potential
                                ! temperature with pressure.
PARALLEL_RESTARTFILES = False   !   [Boolean] default = False
                                ! If true, each processor writes its own restart file,
                                ! otherwise a single restart file is generated
RESTARTFILE = "GOLD.res"        ! default = "MOM.res"
                                ! The name-root of the restart file.
LARGE_FILE_SUPPORT = True       !   [Boolean] default = True
                                ! If true, use the file-size limits with NetCDF large
                                ! file support (4Gb), otherwise the limit is 2Gb.
MAX_FIELDS = 50                 ! default = 50
                                ! The maximum number of restart fields that can be used
                                ! The default value is set in MOM_memory.h as MAX_FIELDS_.
    !  Parameters of module MOM_tracer_flow_control
USE_USER_TRACER_EXAMPLE = False !   [Boolean] default = False
                                ! If true, use the USER_tracer_example tracer package.
USE_DOME_TRACER = False         !   [Boolean] default = False
                                ! If true, use the DOME_tracer tracer package.
USE_IDEAL_AGE_TRACER = False    !   [Boolean] default = False
                                ! If true, use the ideal_age_example tracer package.
USE_OIL_TRACER = False          !   [Boolean] default = False
                                ! If true, use the oil_tracer tracer package.
USE_ADVECTION_TEST_TRACER = False !   [Boolean] default = False
                                ! If true, use the advection_test_tracer tracer package.
USE_OCMIP2_CFC = False          !   [Boolean] default = False
                                ! If true, use the MOM_OCMIP2_CFC tracer package.
USE_generic_tracer = False      !   [Boolean] default = False
                                ! If true and _USE_GENERIC_TRACER is defined as a
                                ! preprocessor macro, use the MOM_generic_tracer packages.
INPUTDIR = "INPUT"              ! default = "."
                                ! The directory in which input files are found.
COORD_CONFIG = "linear"         !
                                ! This specifies how layers are to be defined:
                                !     file - read coordinate information from the file
                                !       specified by (COORD_FILE).
                                !     linear - linear based on interfaces not layesrs.
                                !     ts_ref - use reference temperature and salinity
                                !     ts_range - use range of temperature and salinity
                                !       (T_REF and S_REF) to determine surface density
                                !       and GINT calculate internal densities.
                                !     gprime - use reference density (RHO_0) for surface
                                !       density and GINT calculate internal densities.
                                !     ts_profile - use temperature and salinity profiles
                                !       (read from COORD_FILE) to set layer densities.
                                !     USER - call a user modified routine.
LIGHTEST_DENSITY = 1035.0       !   [kg m-3] default = 1035.0
                                ! The reference potential density used for layer 1.
DENSITY_RANGE = 1.0             !   [kg m-3] default = 2.0
                                ! The range of reference potential densities in the layers.
GFS = 0.98                      !   [m s-2] default = 9.8
                                ! The reduced gravity at the free surface.
    !  Parameters of module MOM_grid_init
GRID_CONFIG = "cartesian"       !
                                ! A character string that determines the method for
                                ! defining the horizontal grid.  Current options are:
                                !     mosaic - read the grid from a mosaic (supergrid)
                                !              file set by GRID_FILE.
                                !     cartesian - use a (flat) Cartesian grid.
                                !     spherical - use a simple spherical grid.
                                !     mercator - use a Mercator spherical grid.
DEBUG = False                   !   [Boolean] default = False
                                ! If true, write out verbose debugging data.
AXIS_UNITS = "k"                ! default = "degrees"
                                ! The units for the Cartesian axes. Valid entries are:
                                !     degrees - degrees of latitude and longitude
                                !     m - meters
                                !     k - kilometers
SOUTHLAT = 30.0                 !   [k]
                                ! The southern latitude of the domain or the equivalent
                                ! starting value for the y-axis.
LENLAT = 40.0                   !   [k]
                                ! The latitudinal or y-direction length of the domain.
WESTLON = 0.0                   !   [k] default = 0.0
                                ! The western longitude of the domain or the equivalent
                                ! starting value for the x-axis.
LENLON = 800.0                  !   [k]
                                ! The longitudinal or x-direction length of the domain.
RAD_EARTH = 6.378E+06           !   [m] default = 6.378E+06
                                ! The radius of the Earth.
GRID_CONFIG = "cartesian"       !
                                ! The method for defining the horizontal grid.  Valid
                                ! entries include:
                                !    file - read the grid from GRID_FILE
                                !    mosaic - read the grid from a mosaic grid file
                                !    cartesian - a Cartesian grid
                                !    spherical - a spherical grid
                                !    mercator  - a Mercator grid
TOPO_CONFIG = "DOME2D"          !
                                ! This specifies how bathymetry is specified:
                                !     file - read bathymetric information from the file
                                !       specified by (TOPO_FILE).
                                !     flat - flat bottom set to MAXIMUM_DEPTH.
                                !     bowl - an analytically specified bowl-shaped basin
                                !       ranging between MAXIMUM_DEPTH and MINIMUM_DEPTH.
                                !     spoon - a similar shape to 'bowl', but with an vertical
                                !       wall at the southern face.
                                !     halfpipe - a zonally uniform channel with a half-sine
                                !       profile in the meridional direction.
                                !     benchmark - use the benchmark test case topography.
                                !     DOME - use a slope and channel configuration for the
                                !       DOME sill-overflow test case.
                                !     DOME2D - use a shelf and slope configuration for the
                                !       DOME2D gravity current/overflow test case.
                                !     seamount - Gaussian bump for spontaneous motion test case.
                                !     USER - call a user modified routine.
MINIMUM_DEPTH = 1.0             !   [m] default = 0.0
                                ! The minimum depth of the ocean.
MAXIMUM_DEPTH = 4000.0          !   [m] default = 1.0E+06
                                ! The maximum depth of the ocean.
APPLY_OBC_U_FLATHER_EAST = False !   [Boolean] default = False
                                ! Apply a Flather open boundary condition on the eastern
                                ! side of the global domain
APPLY_OBC_U_FLATHER_WEST = False !   [Boolean] default = False
                                ! Apply a Flather open boundary condition on the western
                                ! side of the global domain
APPLY_OBC_V_FLATHER_NORTH = False !   [Boolean] default = False
                                ! Apply a Flather open boundary condition on the northern
                                ! side of the global domain
APPLY_OBC_V_FLATHER_SOUTH = False !   [Boolean] default = False
                                ! Apply a Flather open boundary condition on the southern
                                ! side of the global domain
CHANNEL_CONFIG = "none"         ! default = "none"
                                ! A parameter that determines which set of channels are
                                ! restricted to specific  widths.  Options are:
                                !     none - All channels have the grid width.
                                !     global_1deg - Sets 16 specific channels appropriate
                                !       for a 1-degree model, as used in CM2G.
                                !     list - Read the channel locations and widths from a
                                !       text file, like MOM_channel_list in the MOM_SIS
                                !       test case.
                                !     file - Read open face widths everywhere from a
                                !       NetCDF file on the model grid.
ROTATION = "betaplane"          ! default = "2omegasinlat"
                                ! This specifies how the Coriolis parameter is specified:
                                !     2omegasinlat - Use twice the planetary rotation rate
                                !       times the sine of latitude.
                                !     betaplane - Use a beta-plane or f-plane.
                                !     USER - call a user modified routine.
F_0 = 0.0                       !   [s-1] default = 0.0
                                ! The reference value of the Coriolis parameter with the
                                ! betaplane option.
BETA = 0.0                      !   [m-1 s-1] default = 0.0
                                ! The northward gradient of the Coriolis parameter with
                                ! the betaplane option.
ALWAYS_WRITE_GEOM = True        !   [Boolean] default = True
                                ! If true, write the geometry and vertical grid files
                                ! every time the model is run.  Otherwise, only write
                                ! them for new runs.
PARALLEL_RESTARTFILES = False   !   [Boolean] default = False
                                ! If true, each processor writes its own restart file,
                                ! otherwise a single restart file is generated
INIT_LAYERS_FROM_Z_FILE = False !   [Boolean] default = False
                                ! If true, intialize the layer thicknesses, temperatures,
                                ! and salnities from a Z-space file on a latitude-
                                ! longitude grid.
THICKNESS_CONFIG = "DOME2D"     !
                                ! A string that determines how the initial layer
                                ! thicknesses are specified for a new run:
                                !     file - read interface heights from the file specified
                                !     thickness_file - read thicknesses from the file specified
                                !       by (THICKNESS_FILE).
                                !     uniform - uniform thickness layers evenly distributed
                                !       between the surface and MAXIMUM_DEPTH.
                                !     DOME - use a slope and channel configuration for the
                                !       DOME sill-overflow test case.
                                !     benchmark - use the benchmark test case thicknesses.
                                !     search - search a density profile for the interface
                                !       densities. This is not yet implemented.
                                !     circle_obcs - the circle_obcs test case is used.
                                !     DOME2D - 2D version of DOME initialization.
                                !     adjustment2d - TBD AJA.
                                !     sloshing - TBD AJA.
                                !     seamount - TBD AJA.
                                !     USER - call a user modified routine.
TS_CONFIG = "DOME2D"            !
                                ! A string that determines how the initial tempertures
                                ! and salinities are specified for a new run:
                                !     file - read velocities from the file specified
                                !       by (TS_FILE).
                                !     fit - find the temperatures that are consistent with
                                !       the layer densities and salinity S_REF.
                                !     TS_profile - use temperature and salinity profiles
                                !       (read from TS_FILE) to set layer densities.
                                !     benchmark - use the benchmark test case T & S.
                                !     linear - linear in logical layer space.
                                !     DOME2D - 2D DOME initialization.
                                !     adjustment2d - TBD AJA.
                                !     sloshing - TBD AJA.
                                !     seamount - TBD AJA.
                                !     USER - call a user modified routine.
VELOCITY_CONFIG = "zero"        ! default = "zero"
                                ! A string that determines how the initial velocities
                                ! are specified for a new run:
                                !     file - read velocities from the file specified
                                !       by (VELOCITY_FILE).
                                !     zero - the fluid is initially at rest.
                                !     uniform - the flow is uniform (determined by
                                !       paremters TORUS_U and TORUS_V).
                                !     USER - call a user modified routine.
CONVERT_THICKNESS_UNITS = False !   [Boolean] default = False
                                ! If true,  convert the thickness initial conditions from
                                ! units of m to kg m-2 or vice versa, depending on whether
                                ! BOUSSINESQ is defined. This does not apply if a restart
                                ! file is read.
DEPRESS_INITIAL_SURFACE = False !   [Boolean] default = False
                                ! If true,  depress the initial surface to avoid huge
                                ! tsunamis when a large surface pressure is applied.
SPONGE = False                  !   [Boolean] default = False
                                ! If true, sponges may be applied anywhere in the domain.
                                ! The exact location and properties of those sponges are
                                ! specified via SPONGE_CONFIG.
APPLY_OBC_U = False             !   [Boolean] default = False
                                ! If true, open boundary conditions may be set at some
                                ! u-points, with the configuration controlled by OBC_CONFIG
APPLY_OBC_V = False             !   [Boolean] default = False
                                ! If true, open boundary conditions may be set at some
                                ! v-points, with the configuration controlled by OBC_CONFIG
APPLY_OBC_U_FLATHER_EAST = False !   [Boolean] default = False
                                ! Apply a Flather open boundary condition on the eastern
                                ! side of the global domain
APPLY_OBC_U_FLATHER_WEST = False !   [Boolean] default = False
                                ! Apply a Flather open boundary condition on the western
                                ! side of the global domain
APPLY_OBC_V_FLATHER_NORTH = False !   [Boolean] default = False
                                ! Apply a Flather open boundary condition on the northern
                                ! side of the global domain
APPLY_OBC_V_FLATHER_SOUTH = False !   [Boolean] default = False
                                ! Apply a Flather open boundary condition on the southern
                                ! side of the global domain
CONTINUITY_SCHEME = "PPM"       ! default = "PPM"
                                ! CONTINUITY_SCHEME selects the discretization for the
                                ! continuity solver. The only valid value currently is:
                                !    PPM - use a positive-definite (or monotonic)
                                !          piecewise parabolic reconstruction solver.
MONOTONIC_CONTINUITY = False    !   [Boolean] default = False
                                ! If true, CONTINUITY_PPM uses the Colella and Woodward
                                ! monotonic limiter.  The default (false) is to use a
                                ! simple positive definite limiter.
SIMPLE_2ND_PPM_CONTINUITY = False !   [Boolean] default = False
                                ! If true, CONTINUITY_PPM uses a simple 2nd order
                                ! (arithmetic mean) interpolation of the edge values.
                                ! This may give better PV conservation propterties. While
                                ! it formally reduces the accuracy of the continuity
                                ! solver itself in the strongly advective limit, it does
                                ! not reduce the overall order of accuracy of the dynamic
                                ! core.
UPWIND_1ST_CONTINUITY = False   !   [Boolean] default = False
                                ! If true, CONTINUITY_PPM becomes a 1st-order upwind
                                ! continuity solver.  This scheme is highly diffusive
                                ! but may be useful for debugging or in single-column
                                ! mode where its minimal stensil is useful.
ETA_TOLERANCE = 1.0E-12         !   [m] default = 2.0E-09
                                ! The tolerance for the differences between the
                                ! barotropic and baroclinic estimates of the sea surface
                                ! height due to the fluxes through each face.  The total
                                ! tolerance for SSH is 4 times this value.  The default
                                ! is 0.5*NK*ANGSTROM, and this should not be set less x
                                ! than about 10^-15*MAXIMUM_DEPTH.
ETA_TOLERANCE_AUX = 1.0E-12     !   [m] default = 1.0E-12
                                ! The tolerance for free-surface height discrepancies
                                ! between the barotropic solution and the sum of the
                                ! layer thicknesses when calculating the auxiliary
                                ! corrected velocities. By default, this is the same as
                                ! ETA_TOLERANCE, but can be made larger for efficiency.
VELOCITY_TOLERANCE = 3.0E+08    !   [m s-1] default = 3.0E+08
                                ! The tolerance for barotropic velocity discrepancies
                                ! between the barotropic solution and  the sum of the
                                ! layer thicknesses.
CONT_PPM_AGGRESS_ADJUST = False !   [Boolean] default = False
                                ! If true, allow the adjusted velocities to have a
                                ! relative CFL change up to 0.5.
CONT_PPM_VOLUME_BASED_CFL = False !   [Boolean] default = False
                                ! If true, use the ratio of the open face lengths to the
                                ! tracer cell areas when estimating CFL numbers.  The
                                ! default is set by CONT_PPM_AGGRESS_ADJUST.
CONTINUITY_CFL_LIMIT = 0.5      !   [nondim] default = 0.5
                                ! The maximum CFL of the adjusted velocities.
CONT_PPM_BETTER_ITER = True     !   [Boolean] default = True
                                ! If true, stop corrective iterations using a velocity
                                ! based criterion and only stop if the iteration is
                                ! better than all predecessors.
CONT_PPM_USE_VISC_REM_MAX = True !   [Boolean] default = True
                                ! If true, use more appropriate limiting bounds for
                                ! corrections in strongly viscous columns.
NOSLIP = False                  !   [Boolean] default = False
                                ! If true, no slip boundary conditions are used; otherwise
                                ! free slip boundary conditions are assumed. The
                                ! implementation of the free slip BCs on a C-grid is much
                                ! cleaner than the no slip BCs. The use of free slip BCs
                                ! is strongly encouraged, and no slip BCs are not used with
                                ! the biharmonic viscosity.
CORIOLIS_EN_DIS = True          !   [Boolean] default = False
                                ! If true, two estimates of the thickness fluxes are used
                                ! to estimate the Coriolis term, and the one that
                                ! dissipates energy relative to the other one is used.
CORIOLIS_SCHEME = "SADOURNY75_ENERGY" ! default = "SADOURNY75_ENERGY"
                                ! CORIOLIS_SCHEME selects the discretization for the
                                ! Coriolis terms. Valid values are:
                                !    SADOURNY75_ENERGY - Sadourny, 1975; energy cons.
                                !    ARAKAWA_HSU90     - Arakawa & Hsu, 1990
                                !    SADOURNY75_ENSTRO - Sadourny, 1975; enstrophy cons.
                                !    ARAKAWA_LAMB81    - Arakawa & Lamb, 1981; En. + Enst.
                                !    ARAKAWA_LAMB_BLEND - A blend of Arakawa & Lamb with
                                !                         Arakawa & Hsu and Sadourny energy
BOUND_CORIOLIS = True           !   [Boolean] default = False
                                ! If true, the Coriolis terms at u-points are bounded by
                                ! the four estimates of (f+rv)v from the four neighboring
                                ! v-points, and similarly at v-points.  This option is
                                ! always effectively false with CORIOLIS_EN_DIS defined and
                                ! CORIOLIS_SCHEME set to SADOURNY75_ENERGY.
KE_SCHEME = "KE_ARAKAWA"        ! default = "KE_ARAKAWA"
                                ! KE_SCHEME selects the discretization for acceleration
                                ! due to the kinetic energy gradient. Valid values are:
                                !    KE_ARAKAWA, KE_SIMPLE_GUDONOV, KE_GUDONOV
PV_ADV_SCHEME = "PV_ADV_CENTERED" ! default = "PV_ADV_CENTERED"
                                ! PV_ADV_SCHEME selects the discretization for PV
                                ! advection. Valid values are:
                                !    PV_ADV_CENTERED - centered (aka Sadourny, 75)
                                !    PV_ADV_UPWIND1  - upwind, first order
ANALYTIC_FV_PGF = True          !   [Boolean] default = True
                                ! If true the pressure gradient forces are calculated
                                ! with a finite volume form that analytically integrates
                                ! the equations of state in pressure to avoid any
                                ! possibility of numerical thermobaric instability, as
                                ! described in Adcroft et al., O. Mod. (2008).
TIDES = False                   !   [Boolean] default = False
                                ! If true, apply tidal momentum forcing.
    !  Parameters of module MOM_hor_visc
LAPLACIAN = True                !   [Boolean] default = False
                                ! If true, use a Laplacian horizontal viscosity.
BIHARMONIC = False              !   [Boolean] default = True
                                ! If true, se a biharmonic horizontal viscosity.
                                ! BIHARMONIC may be used with LAPLACIAN.
KH = 1.0E+04                    !   [m2 s-1] default = 0.0
                                ! The background Laplacian horizontal viscosity.
KH_VEL_SCALE = 0.003            !   [m s-1] default = 0.0
                                ! The velocity scale which is multiplied by the grid
                                ! spacing to calculate the Laplacian viscosity.
                                ! The final viscosity is the largest of this scaled
                                ! viscosity, the Smagorinsky viscosity and KH.
SMAGORINSKY_KH = False          !   [Boolean] default = False
                                ! If true, use a Smagorinsky nonlinear eddy viscosity.
BOUND_KH = True                 !   [Boolean] default = True
                                ! If true, the Laplacian coefficient is locally limited
                                ! to be stable.
BETTER_BOUND_KH = True          !   [Boolean] default = True
                                ! If true, the Laplacian coefficient is locally limited
                                ! to be stable with a better bounding than just BOUND_KH.
HORVISC_BOUND_COEF = 0.8        !   [nondim] default = 0.8
                                ! The nondimensional coefficient of the ratio of the
                                ! viscosity bounds to the theoretical maximum for
                                ! stability without considering other terms.
NOSLIP = False                  !   [Boolean] default = False
                                ! If true, no slip boundary conditions are used; otherwise
                                ! free slip boundary conditions are assumed. The
                                ! implementation of the free slip BCs on a C-grid is much
                                ! cleaner than the no slip BCs. The use of free slip BCs
                                ! is strongly encouraged, and no slip BCs are not used with
                                ! the biharmonic viscosity.
DT = 300.0                      !   [s]
                                ! The (baroclinic) dynamics time step.
    !  Parameters of module MOM_vert_friction
BOTTOMDRAGLAW = True            !   [Boolean] default = True
                                ! If true, the bottom stress is calculated with a drag
                                ! law of the form c_drag*|u|*u. The velocity magnitude
                                ! may be an assumed value or it may be based on the
                                ! actual velocity in the bottommost HBBL, depending on
                                ! LINEAR_DRAG.
CHANNEL_DRAG = False            !   [Boolean] default = False
                                ! If true, the bottom drag is exerted directly on each
                                ! layer proportional to the fraction of the bottom it
                                ! overlies.
DIRECT_STRESS = True            !   [Boolean] default = False
                                ! If true, the wind stress is distributed over the
                                ! topmost HMIX of fluid (like in HYCOM), and KVML may be
                                ! set to a very small value.
DYNAMIC_VISCOUS_ML = False      !   [Boolean] default = False
                                ! If true, use a bulk Richardson number criterion to
                                ! determine the mixed layer thickness for viscosity.
U_TRUNC_FILE = "U_velocity_truncations" ! default = ""
                                ! The absolute path to a file into which the accelerations
                                ! leading to zonal velocity truncations are written.
                                ! Undefine this for efficiency if this diagnostic is not
                                ! needed.
V_TRUNC_FILE = "V_velocity_truncations" ! default = ""
                                ! The absolute path to a file into which the accelerations
                                ! leading to meridional velocity truncations are written.
                                ! Undefine this for efficiency if this diagnostic is not
                                ! needed.
HARMONIC_VISC = False           !   [Boolean] default = False
                                ! If true, use the harmonic mean thicknesses for
                                ! calculating the vertical viscosity.
HMIX = 20.0                     !   [m] default = -1.0E+06
                                ! The depth over which the near-surface viscosity is
                                ! elevated if BULKMIXEDLAYER is false.
HMIX_STRESS = 20.0              !   [m] default = 20.0
                                ! The depth over which the wind stress is applied if
                                ! DIRECT_STRESS is true.
KV = 1.0E-04                    !   [m2 s-1]
                                ! The background kinematic viscosity in the interior.
                                ! The molecular value, ~1e-6 m2 s-1, may be used.
KVML = 0.01                     !   [m2 s-1] default = 1.0E-04
                                ! The kinematic viscosity in the mixed layer.  A typical
                                ! value is ~1e-2 m2 s-1. KVML is not used if
                                ! BULKMIXEDLAYER is true.  The default is set by KV.
HBBL = 10.0                     !   [m]
                                ! The thickness of a bottom boundary layer with a
                                ! viscosity of KVBBL if BOTTOMDRAGLAW is not defined, or
                                ! the thickness over which near-bottom velocities are
                                ! averaged for the drag law if BOTTOMDRAGLAW is defined
                                ! but LINEAR_DRAG is not.
MAXVEL = 10.0                   !   [m s-1] default = 3.0E+08
                                ! The maximum velocity allowed before the velocity
                                ! components are truncated.
CFL_BASED_TRUNCATIONS = True    !   [Boolean] default = True
                                ! If true, base truncations on the CFL number, and not an
                                ! absolute speed.
CFL_TRUNCATE = 0.5              !   [nondim] default = 0.5
                                ! The value of the CFL number that will cause velocity
                                ! components to be truncated; instability can occur past 0.5.
CFL_REPORT = 0.5                !   [nondim] default = 0.5
                                ! The value of the CFL number that causes accelerations
                                ! to be reported; the default is CFL_TRUNCATE.
    !  Parameters of module MOM_PointAccel
MAX_TRUNC_FILE_SIZE_PER_PE = 50 ! default = 50
                                ! The maximum number of colums of truncations that any PE
                                ! will write out during a run.
SPLIT = True                    !   [Boolean] default = True
                                ! Use the split time stepping if true.
    !  Parameters of module MOM_set_visc
BOTTOMDRAGLAW = True            !   [Boolean] default = True
                                ! If true, the bottom stress is calculated with a drag
                                ! law of the form c_drag*|u|*u. The velocity magnitude
                                ! may be an assumed value or it may be based on the
                                ! actual velocity in the bottommost HBBL, depending on
                                ! LINEAR_DRAG.
CHANNEL_DRAG = False            !   [Boolean] default = False
                                ! If true, the bottom stress is calculated with a drag
                                ! law of the form c_drag*|u|*u. The velocity magnitude
                                ! may be an assumed value or it may be based on the
                                ! actual velocity in the bottommost HBBL, depending on
                                ! LINEAR_DRAG.
LINEAR_DRAG = True              !   [Boolean] default = False
                                ! If LINEAR_DRAG and BOTTOMDRAGLAW are defined the drag
                                ! law is cdrag*DRAG_BG_VEL*u.
USE_JACKSON_PARAM = False       !   [Boolean] default = False
                                ! If true, use the Jackson-Hallberg-Legg (JPO 2008)
                                ! shear mixing parameterization.
DOUBLE_DIFFUSION = False        !   [Boolean] default = False
                                ! If true, increase diffusivitives for temperature or salt
                                ! based on double-diffusive paramaterization from MOM4/KPP.
DYNAMIC_VISCOUS_ML = False      !   [Boolean] default = False
                                ! If true, use a bulk Richardson number criterion to
                                ! determine the mixed layer thickness for viscosity.
HBBL = 10.0                     !   [m]
                                ! The thickness of a bottom boundary layer with a
                                ! viscosity of KVBBL if BOTTOMDRAGLAW is not defined, or
                                ! the thickness over which near-bottom velocities are
                                ! averaged for the drag law if BOTTOMDRAGLAW is defined
                                ! but LINEAR_DRAG is not.
CDRAG = 0.0                     !   [nondim] default = 0.003
                                ! CDRAG is the drag coefficient relating the magnitude of
                                ! the velocity field to the bottom stress. CDRAG is only
                                ! used if BOTTOMDRAGLAW is defined.
DRAG_BG_VEL = 0.05              !   [m s-1] default = 0.0
                                ! DRAG_BG_VEL is either the assumed bottom velocity (with
                                ! LINEAR_DRAG) or an unresolved  velocity that is
                                ! combined with the resolved velocity to estimate the
                                ! velocity magnitude.  DRAG_BG_VEL is only used when
                                ! BOTTOMDRAGLAW is defined.
BBL_USE_EOS = False             !   [Boolean] default = False
                                ! If true, use the equation of state in determining the
                                ! properties of the bottom boundary layer.  Otherwise use
                                ! the layer target potential densities.
BBL_THICK_MIN = 0.1             !   [m] default = 0.0
                                ! The minimum bottom boundary layer thickness that can be
                                ! used with BOTTOMDRAGLAW. This might be
                                ! Kv / (cdrag * drag_bg_vel) to give Kv as the minimum
                                ! near-bottom viscosity.
HTBL_SHELF_MIN = 0.1            !   [m] default = 0.1
                                ! The minimum top boundary layer thickness that can be
                                ! used with BOTTOMDRAGLAW. This might be
                                ! Kv / (cdrag * drag_bg_vel) to give Kv as the minimum
                                ! near-top viscosity.
HTBL_SHELF = 10.0               !   [m] default = 10.0
                                ! The thickness over which near-surface velocities are
                                ! averaged for the drag law under an ice shelf.  By
                                ! default this is the same as HBBL
KV_BBL_MIN = 0.0                !   [m2 s-1] default = 0.0
                                ! The minimum viscosities in the bottom boundary layer.
KV_TBL_MIN = 0.0                !   [m2 s-1] default = 0.0
                                ! The minimum viscosities in the top boundary layer.
    !  Parameters of module MOM_thickness_diffuse
THICKNESSDIFFUSE = False        !   [Boolean] default = False
                                ! If true, interfaces heights are diffused with a
                                ! coefficient of KHTH.
KHTH = 1.0E-04                  !   [m2 s-1] default = 0.0
                                ! The background horizontal thickness diffusivity.
KHTH_SLOPE_CFF = 0.0            !   [nondim] default = 0.0
                                ! The nondimensional coefficient in the Visbeck formula
                                ! for the interface depth diffusivity
KHTH_MIN = 0.0                  !   [m2 s-1] default = 0.0
                                ! The minimum horizontal thickness diffusivity.
KHTH_MAX = 0.0                  !   [m2 s-1] default = 0.0
                                ! The maximum horizontal thickness diffusivity.
DETANGLE_INTERFACES = False     !   [Boolean] default = False
                                ! If defined add 3-d structured enhanced interface height
                                ! diffusivities to horizonally smooth jagged layers.
KHTH_SLOPE_MAX = 0.01           !   [nondim] default = 0.01
                                ! A slope beyond which the calculated isopycnal slope is
                                ! not reliable and is scaled away. This is used with
                                ! FULL_THICKNESSDIFFUSE.
KD_SMOOTH = 1.0E-06             !   [not defined] default = 1.0E-06
                                ! A diapycnal diffusivity that is used to interpolate
                                ! more sensible values of T & S into thin layers.
DEBUG = False                   !   [Boolean] default = False
                                ! If true, write out verbose debugging data.
    !  Parameters of module MOM_MEKE
MEKE_DAMPING = 0.0              !   [s-1] default = 0.0
                                ! The local depth-indepented MEKE dissipation rate.
MEKE_CD_SCALE = 0.0             !   [nondim] default = 0.0
                                ! A scaling for the bottom drag applied to MEKE.  This
                                ! should be less than 1 to account for the surface
                                ! intensification of MEKE and the fraction of MEKE that
                                ! may be temporarily stored as potential energy.
MEKE_GMCOEFF = -1.0             !   [nondim] default = -1.0
                                ! The efficiency of the conversion of potential energy
                                ! into MEKE by the thickness mixing parameterization.
                                ! If MEKE_GMCOEFF is negative, this conversion is not
                                ! used or calculated.
MEKE_FRCOEFF = -1.0             !   [nondim] default = -1.0
                                ! The efficiency of the conversion of mean energy into
                                ! MEKE.  If MEKE_FRCOEFF is negative, this conversion
                                ! is not used or calculated.
MEKE_BGSRC = 0.0                !   [W kg-1] default = 0.0
                                ! A background energy source for MEKE.
MEKE_KH = -1.0                  !   [m2 s-1] default = -1.0
                                ! A background lateral diffusivity of MEKE, or a
                                ! Use a negative value to not apply lateral diffusion to MEKE.
MEKE_DTSCALE = 1.0              !   [nondim] default = 1.0
                                ! A scaling factor to accelerate the time evolution of MEKE.
MEKE_KHCOEFF = -1.0             !   [nondim] default = -1.0
                                ! A scaling factor which is combined with the square root
                                ! of MEKE times the grid-cell area to give MEKE%Kh, or a
                                ! negative value not to calculate MEKE%Kh.
                                ! This factor must be >0 for MEKE to contribute to the
                                ! thickness/tracer mixing in the rest of the model.
MEKE_USCALE = 1.0               !   [m s-1] default = 1.0
                                ! The background velocity that is combined with MEKE to
                                ! calculate the bottom drag.
MEKE_VISC_DRAG = False          !   [Boolean] default = False
                                ! If true, use the vertvisc_type to calculate the bottom
                                ! drag acting on MEKE.
MEKE_KHTH_FAC = 1.0             !   [nondim] default = 1.0
                                ! A factor that maps MEKE%Kh to KhTh.
MEKE_KHTR_FAC = 1.0             !   [nondim] default = 1.0
                                ! A factor that maps MEKE%Kh to KhTr.
MEKE_KHMEKE_FAC = 0.0           !   [nondim] default = 0.0
                                ! A factor that maps MEKE%Kh to Kh for MEKE itself.
MEKE_RD_MAX_SCALE = True        !   [nondim] default = True
                                ! If true, the maximum length scale used by MEKE is
                                ! the deformation radius.
    !  Parameters of module MOM_lateral_mixing_coeffs
USE_VARIABLE_MIXING = False     !   [Boolean] default = False
                                ! If true, the variable mixing code will be called.  This
                                ! allows diagnostics to be created even if the scheme is
                                ! not used.  If KHTR_SLOPE_CFF>0 or  KhTh_Slope_Cff>0,
                                ! this is set to true regardless of what is in the
                                ! parameter file.
RESOLN_SCALED_KH = False        !   [Boolean] default = False
                                ! If true, the Laplacian lateral viscosity is scaled away
                                ! when the first baroclinic deformation radius is well
                                ! resolved.
RESOLN_SCALED_KHTH = False      !   [Boolean] default = False
                                ! If true, the interface depth diffusivity is scaled away
                                ! when the first baroclinic deformation radius is well
                                ! resolved.
RESOLN_SCALED_KHTR = False      !   [Boolean] default = False
                                ! If true, the epipycnal tracer diffusivity is scaled
                                ! away when the first baroclinic deformation radius is
                                ! well resolved.
USE_REGRIDDING = False          !   [Boolean] default = False
                                ! If True, use the ALE algorithm (regridding/remapping).
                                ! If False, use the layered isopycnal algorithm.
SPLIT = True                    !   [Boolean] default = True
                                ! Use the split time stepping if true.
Z_OUTPUT_GRID_FILE = ""         ! default = ""
                                ! The file that specifies the vertical grid for
                                ! depth-space diagnostics, or blank to disable
                                ! depth-space output.
    !  Parameters of module MOM_diabatic_driver
        ! The following parameters are used for diabatic processes.
SPONGE = False                  !   [Boolean] default = False
                                ! If true, sponges may be applied anywhere in the domain.
                                ! The exact location and properties of those sponges are
                                ! specified via calls to initialize_sponge and possibly
                                ! set_up_sponge_field.
ENABLE_THERMODYNAMICS = True    !   [Boolean] default = True
                                ! If true, temperature and salinity are used as state
                                ! variables.
DOUBLE_DIFFUSION = False        !   [Boolean] default = False
                                ! If true, apply parameterization of double-diffusion.
USE_JACKSON_PARAM = False       !   [Boolean] default = False
                                ! If true, use the Jackson-Hallberg-Legg (JPO 2008)
                                ! shear mixing parameterization.
DO_GEOTHERMAL = False           !   [Boolean] default = False
                                ! If true, apply geothermal heating.
MASSLESS_MATCH_TARGETS = True   !   [Boolean] default = True
                                ! If true, the temperature and salinity of massless layers
                                ! are kept consistent with their target densities.
                                ! Otherwise the properties of massless layers evolve
                                ! diffusively to match massive neighboring layers.
RECLAIM_FRAZIL = True           !   [Boolean] default = True
                                ! If true, try to use any frazil heat deficit to cool any
                                ! overlying layers down to the freezing point, thereby
                                ! avoiding the creation of thin ice when the SST is above
                                ! the freezing point.
PRESSURE_DEPENDENT_FRAZIL = False !   [Boolean] default = False
                                ! If true, use a pressure dependent freezing temperature
                                ! when making frazil. The default is false, which will be
                                ! faster but is inappropriate with ice-shelf cavities.
DEBUG = False                   !   [Boolean] default = False
                                ! If true, write out verbose debugging data.
MIX_BOUNDARY_TRACERS = True     !   [Boolean] default = True
                                ! If true, mix the passive tracers in massless layers at
                                ! the bottom into the interior as though a diffusivity of
                                ! KD_MIN_TR were operating.
KD_MIN_TR = 0.0                 !   [m2 s-1] default = 0.0
                                ! A minimal diffusivity that should always be applied to
                                ! tracers, especially in massless layers near the bottom.
                                ! The default is 0.1*KD.
KD_BBL_TR = 0.0                 !   [m2 s-1] default = 0.0
                                ! A bottom boundary layer tracer diffusivity that will
                                ! allow for explicitly specified bottom fluxes. The
                                ! entrainment at the bottom is at least sqrt(Kd_BBL_tr*dt)
                                ! over the same distance.
FLUX_RI_MAX = 0.2               !   [not defined] default = 0.2
                                ! The flux Richardson number where the stratification is
                                ! large enough that N2 > omega2.  The full expression for
                                ! the Flux Richardson number is usually
                                ! FLUX_RI_MAX*N2/(N2+OMEGA2).
OMEGA = 7.2921E-05              !   [s-1] default = 7.2921E-05
                                ! The rotation rate of the earth.
ML_RADIATION = False            !   [Boolean] default = False
                                ! If true, allow a fraction of TKE available from wind
                                ! work to penetrate below the base of the mixed layer
                                ! with a vertical decay scale determined by the minimum
                                ! of: (1) The depth of the mixed layer, (2) an Ekman
                                ! length scale.
BOTTOMDRAGLAW = True            !   [Boolean] default = True
                                ! If true, the bottom stress is calculated with a drag
                                ! law of the form c_drag*|u|*u. The velocity magnitude
                                ! may be an assumed value or it may be based on the
                                ! actual velocity in the bottommost HBBL, depending on
                                ! LINEAR_DRAG.
BBL_EFFIC = 0.2                 !   [nondim] default = 0.2
                                ! The efficiency with which the energy extracted by
                                ! bottom drag drives BBL diffusion.  This is only
                                ! used if BOTTOMDRAGLAW is true.
BBL_MIXING_MAX_DECAY = 0.0      !   [m] default = 0.0
                                ! The maximum decay scale for the BBL diffusion, or 0
                                ! to allow the mixing to penetrate as far as
                                ! stratification and rotation permit.  The default is 0.
                                ! This is only used if BOTTOMDRAGLAW is true.
BBL_MIXING_AS_MAX = True        !   [Boolean] default = True
                                ! If true, take the maximum of the diffusivity from the
                                ! BBL mixing and the other diffusivities. Otherwise,
                                ! diffusiviy from the BBL_mixing is simply added.
BRYAN_LEWIS_DIFFUSIVITY = False !   [Boolean] default = False
                                ! If true, use a Bryan & Lewis (JGR 1979) like tanh
                                ! profile of background diapycnal diffusivity with depth.
HENYEY_IGW_BACKGROUND = False   !   [Boolean] default = False
                                ! If true, use a latitude-dependent scaling for the near
                                ! surface background diffusivity, as described in
                                ! Harrison & Hallberg, JPO 2008.
N2_FLOOR_IOMEGA2 = 1.0          !   [nondim] default = 1.0
                                ! The floor applied to N2(k) scaled by Omega^2:
                                !   If =0., N2(k) is simply positive definite.
                                !   If =1., N2(k) > Omega^2 everywhere.
KD_TANH_LAT_FN = False          !   [Boolean] default = False
                                ! If true, use a tanh dependence of Kd_sfc on latitude,
                                ! like CM2.1/CM2M.  There is no physical justification
                                ! for this form, and it can not be used with
                                ! HENYEY_IGW_BACKGROUND.
USE_JACKSON_PARAM = False       !   [Boolean] default = False
                                ! If true, use the Jackson-Hallberg-Legg (JPO 2008)
                                ! shear mixing parameterization.
KV = 1.0E-04                    !   [m2 s-1]
                                ! The background kinematic viscosity in the interior.
                                ! The molecular value, ~1e-6 m2 s-1, may be used.
KD = 0.0                        !   [m2 s-1]
                                ! The background diapycnal diffusivity of density in the
                                ! interior. Zero or the molecular value, ~1e-7 m2 s-1,
                                ! may be used.
KD_MIN = 0.0                    !   [m2 s-1] default = 0.0
                                ! The minimum diapycnal diffusivity.
KD_MAX = -1.0                   !   [m2 s-1] default = -1.0
                                ! The maximum permitted increment for the diapycnal
                                ! diffusivity from TKE-based parameterizations, or a
                                ! negative value for no limit.
KD_ADD = 0.0                    !   [m2 s-1] default = 0.0
                                ! A uniform diapycnal diffusivity that is added
                                ! everywhere without any filtering or scaling.
KDML = 1.0E-04                  !   [m2 s-1] default = 0.0
                                ! If BULKMIXEDLAYER is false, KDML is the elevated
                                ! diapycnal diffusivity in the topmost HMIX of fluid.
                                ! KDML is only used if BULKMIXEDLAYER is false.
HMIX = 20.0                     !   [m]
                                ! If BULKMIXEDLAYER is false, HMIX is the depth over
                                ! which the diapycnal diffusivity is elevated.  HMIX
                                ! is only used directly if BULKMIXEDLAYER is false.
DEBUG = False                   !   [Boolean] default = False
                                ! If true, write out verbose debugging data.
INT_TIDE_DISSIPATION = False    !   [Boolean] default = False
                                ! If true, use an internal tidal dissipation scheme to
                                ! drive diapycnal mixing, along the lines of St. Laurent
                                ! et al. (2002) and Simmons et al. (2004).
LEE_WAVE_DISSIPATION = False    !   [Boolean] default = False
                                ! If true, use an lee wave driven dissipation scheme to
                                ! drive diapycnal mixing, along the lines of Nikurashin
                                ! (2010) and using the St. Laurent et al. (2002)
                                ! and Simmons et al. (2004) vertical profile
USER_CHANGE_DIFFUSIVITY = False !   [Boolean] default = False
                                ! If true, call user-defined code to change the diffusivity.
DISSIPATION_MIN = 0.0           !   [W m-3] default = 0.0
                                ! The minimum dissipation by which to determine a lower
                                ! bound of Kd (a floor).
DISSIPATION_N0 = 0.0            !   [W m-3] default = 0.0
                                ! The intercept when N=0 of the N-dependent expression
                                ! used to set a minimum dissipation by which to determine
                                ! a lower bound of Kd (a floor): A in eps_min = A + B*N.
DISSIPATION_N1 = 0.0            !   [J m-3] default = 0.0
                                ! The coefficient multiplying N, following Gargett, used to
                                ! set a minimum dissipation by which to determine a lower
                                ! bound of Kd (a floor): B in eps_min = A + B*N
DISSIPATION_KD_MIN = 0.0        !   [m2 s-1] default = 0.0
                                ! The minimum vertical diffusivity applied as a floor.
DOUBLE_DIFFUSION = False        !   [Boolean] default = False
                                ! If true, increase diffusivitives for temperature or salt
                                ! based on double-diffusive paramaterization from MOM4/KPP.
    !  Parameters of module MOM_entrain_diffusive
CORRECT_DENSITY = False         !   [Boolean] default = True
                                ! If true, and USE_EOS is true, the layer densities are
                                ! restored toward their target values by the diapycnal
                                ! mixing, as described in Hallberg (MWR, 2000).
MAX_ENT_IT = 5                  ! default = 5
                                ! The maximum number of iterations that may be used to
                                ! calculate the interior diapycnal entrainment.
KD = 0.0                        !   [m2 s-1]
                                ! The background diapycnal diffusivity of density.
                                ! Zero or the molecular value, ~1e-7 m2 s-1, may be used.
                                ! In this module, KD is only used to set the default for
                                ! TOLERANCE_ENT.
DT = 300.0                      !   [s]
                                ! The (baroclinic) dynamics time step.
TOLERANCE_ENT = 1.0E-08         !   [m] default = 1.0E-08
                                ! The tolerance with which to solve for entrainment values.
    !  Parameters of module MOM_vert_remap
REGULARIZE_SURFACE_LAYERS = False !   [Boolean] default = False
                                ! If defined, vertically restructure the near-surface
                                ! layers when they have too much lateral variations to
                                ! allow for sensible lateral barotropic transports.
HMIX_MIN = 20.0                 !   [m] default = 20.0
                                ! The minimum mixed layer depth if BULKMIXEDLAYER is true.
REG_SFC_DEFICIT_TOLERANCE = 0.5 !   [nondim] default = 0.5
                                ! The value of the relative thickness deficit at which
                                ! to start modifying the layer structure when
                                ! REGULARIZE_SURFACE_LAYERS is true.
    !  Parameters of module MOM_opacity
VAR_PEN_SW = False              !   [Boolean] default = False
                                ! If true, use one of the CHL_A schemes specified by
                                ! OPACITY_SCHEME to determine the e-folding depth of
                                ! incoming short wave radiation.
PEN_SW_SCALE = 15.0             !   [m] default = 0.0
                                ! The vertical absorption e-folding depth of the
                                ! penetrating shortwave radiation.
PEN_SW_FRAC = 0.42              !   [nondim] default = 0.0
                                ! The fraction of the shortwave radiation that penetrates
                                ! below the surface.
PEN_SW_NBANDS = 1               ! default = 1
                                ! The number of bands of penetrating shortwave radiation.
OPACITY_LAND_VALUE = 10.0       !   [m-1] default = 10.0
                                ! The value to use for opacity over land. The default is
                                ! 10 m-1 - a value for muddy water.
    !  Parameters of module MOM_barotropic
SPLIT = True                    !   [Boolean] default = True
                                ! Use the split time stepping if true.
BOUND_BT_CORRECTION = True      !   [Boolean] default = False
                                ! If true, the corrective pseudo mass-fluxes into the
                                ! barotropic solver are limited to values that require
                                ! less than 0.1*MAXVEL to be accommodated.
GRADUAL_BT_ICS = False          !   [Boolean] default = False
                                ! If true, adjust the initial conditions for the
                                ! barotropic solver to the values from the layered
                                ! solution over a whole timestep instead of instantly.
                                ! This is a decent approximation to the inclusion of
                                ! sum(u dh_dt) while also correcting for truncation errors.
BT_USE_WIDE_HALOS = True        !   [Boolean] default = True
                                ! If true, use wide halos and march in during the
                                ! barotropic time stepping for efficiency.
BTHALO = 0                      ! default = 0
                                ! The minimum halo size for the barotropic solver.
BT x-halo = 0                   !
                                ! The barotropic x-halo size that is actually used.
BT y-halo = 0                   !
                                ! The barotropic y-halo size that is actually used.
USE_BT_CONT_TYPE = True         !   [Boolean] default = True
                                ! If true, use a structure with elements that describe
                                ! effective face areas from the summed continuity solver
                                ! as a function the barotropic flow in coupling between
                                ! the barotropic and baroclinic flow.  This is only used
                                ! if SPLIT is true.
NONLINEAR_BT_CONTINUITY = False !   [Boolean] default = False
                                ! If true, use nonlinear transports in the barotropic
                                ! continuity equation.  This does not apply if
                                ! USE_BT_CONT_TYPE is true.
RESCALE_BT_FACE_AREAS = False   !   [Boolean] default = False
                                ! If true, the face areas used by the barotropic solver
                                ! are rescaled to approximately reflect the open face
                                ! areas of the interior layers.  This probably requires
                                ! FLUX_BT_COUPLING to work, and should not be used with
                                ! USE_BT_CONT_TYPE.
BT_MASS_SOURCE_LIMIT = 0.0      !   [nondim] default = 0.0
                                ! The fraction of the initial depth of the ocean that can
                                ! be added to or removed from the bartropic solution
                                ! within a thermodynamic time step.  By default this is 0
                                ! for no correction.
BT_PROJECT_VELOCITY = False     !   [Boolean] default = False
                                ! If true, step the barotropic velocity first and project
                                ! out the velocity tendancy by 1+BEBT when calculating the
                                ! transport.  The default (false) is to use a predictor
                                ! continuity step to find the pressure field, and then
                                ! to do a corrector continuity step using a weighted
                                ! average of the old and new velocities, with weights
                                ! of (1-BEBT) and BEBT.
DYNAMIC_SURFACE_PRESSURE = False !   [Boolean] default = False
                                ! If true, add a dynamic pressure due to a viscous ice
                                ! shelf, for instance.
TIDES = False                   !   [Boolean] default = False
                                ! If true, apply tidal momentum forcing.
SADOURNY = True                 !   [Boolean] default = True
                                ! If true, the Coriolis terms are discretized with the
                                ! Sadourny (1975) energy conserving scheme, otherwise
                                ! the Arakawa & Hsu scheme is used.  If the internal
                                ! deformation radius is not resolved, the Sadourny scheme
                                ! should probably be used.
BT_THICK_SCHEME = "HYBRID"      ! default = "HYBRID"
                                ! A string describing the scheme that is used to set the
                                ! open face areas used for barotropic transport and the
                                ! relative weights of the accelerations. Valid values are:
                                !    ARITHMETIC - arithmetic mean layer thicknesses
                                !    HARMONIC - harmonic mean layer thicknesses
                                !    HYBRID (the default) - use arithmetic means for
                                !       layers above the shallowest bottom, the harmonic
                                !       mean for layers below, and a weighted average for
                                !       layers that straddle that depth
                                !    FROM_BT_CONT - use the average thicknesses kept
                                !       in the h_u and h_v fields of the BT_cont_type
APPLY_BT_DRAG = True            !   [Boolean] default = True
                                ! If defined, bottom drag is applied within the
                                ! barotropic solver.
BT_STRONG_DRAG = False          !   [Boolean] default = False
                                ! If true, use a stronger estimate of the retarding
                                ! effects of strong bottom drag, by making it implicit
                                ! with the barotropic time-step instead of implicit with
                                ! the baroclinic time-step and dividing by the number of
                                ! barotropic steps.
CLIP_BT_VELOCITY = False        !   [Boolean] default = False
                                ! If true, limit any velocity components that exceed
                                ! MAXVEL.  This should only be used as a desperate
                                ! debugging measure.
MAXCFL_BT_CONT = 0.1            !   [nondim] default = 0.1
                                ! The maximum permitted CFL number associated with the
                                ! barotropic accelerations from the summed velocities
                                ! times the time-derivatives of thicknesses.
DT_BT_FILTER = -0.25            !   [sec or nondim] default = -0.25
                                ! A time-scale over which the barotropic mode solutions
                                ! are filtered, in seconds if positive, or as a fraction
                                ! of DT if negative. When used this can never be taken to
                                ! be longer than 2*dt.  Set this to 0 to apply no filtering.
G_BT_EXTRA = 0.0                !   [nondim] default = 0.0
                                ! A nondimensional factor by which gtot is enhanced.
SSH_EXTRA = 10.0                !   [m] default = 10.0
                                ! An estimate of how much higher SSH might get, for use
                                ! in calculating the safe external wave speed. The
                                ! default is the minimum of 10 m or 5% of MAXIMUM_DEPTH.
DEBUG = False                   !   [Boolean] default = False
                                ! If true, write out verbose debugging data.
DEBUG_BT = False                !   [Boolean] default = False
                                ! If true, write out verbose debugging data within the
                                ! barotropic time-stepping loop. The data volume can be
                                ! quite large if this is true.
BEBT = 0.2                      !   [nondim] default = 0.1
                                ! BEBT determines whether the barotropic time stepping
                                ! uses the forward-backward time-stepping scheme or a
                                ! backward Euler scheme. BEBT is valid in the range from
                                ! 0 (for a forward-backward treatment of nonrotating
                                ! gravity waves) to 1 (for a backward Euler treatment).
                                ! In practice, BEBT must be greater than about 0.05.
DTBT = 20.0                     !   [s or nondim] default = -0.98
                                ! The barotropic time step, in s. DTBT is only used with
                                ! the split explicit time stepping. To set the time step
                                ! automatically based the maximum stable value use 0, or
                                ! a negative value gives the fraction of the stable value.
                                ! Setting DTBT to 0 is the same as setting it to -0.98.
                                ! The value of DTBT that will actually be used is an
                                ! integer fraction of DT, rounding down.
REENTRANT_X = False             !   [Boolean] default = True
                                ! If true, the domain is zonally reentrant.
REENTRANT_Y = False             !   [Boolean] default = False
                                ! If true, the domain is meridionally reentrant.
TRIPOLAR_N = False              !   [Boolean] default = False
                                ! Use tripolar connectivity at the northern edge of the
                                ! domain.  With TRIPOLAR_N, NIGLOBAL must be even.
SYMMETRIC_MEMORY_ = True        !   [Boolean]
                                ! If defined, the velocity point data domain includes
                                ! every face of the thickness points. In other words,
                                ! some arrays are larger than others, depending on where
                                ! they are on the staggered grid.  Also, the starting
                                ! index of the velocity-point arrays is usually 0, not 1.
                                ! This can only be set at compile time.
NONBLOCKING_UPDATES = False     !   [Boolean] default = False
                                ! If true, non-blocking halo updates may be used.
STATIC_MEMORY_ = False          !   [Boolean]
                                ! If STATIC_MEMORY_ is defined, the principle variables
                                ! will have sizes that are statically determined at
                                ! compile time.  Otherwise the sizes are not determined
                                ! until run time. The STATIC option is substantially
                                ! faster, but does not allow the PE count to be changed
                                ! at run time.  This can only be set at compile time.
NIGLOBAL = 80                   !
                                ! The total number of thickness grid points in the
                                ! x-direction in the physical domain. With STATIC_MEMORY_
                                ! this is set in MOM_memory.h at compile time.
NJGLOBAL = 4                    !
                                ! The total number of thickness grid points in the
                                ! x-direction in the physical domain. With STATIC_MEMORY_
                                ! this is set in MOM_memory.h at compile time.
NIPROC = 2                      !
                                ! The number of processors in the x-direction. With
                                ! STATIC_MEMORY_ this is set in MOM_memory.h at compile time.
NJPROC = 1                      !
                                ! The number of processors in the x-direction. With
                                ! STATIC_MEMORY_ this is set in MOM_memory.h at compile time.
    !  Parameters of module MOM_surface_forcing
ENABLE_THERMODYNAMICS = True    !   [Boolean] default = True
                                ! If true, Temperature and salinity are used as state
                                ! variables.
ADIABATIC = False               !   [Boolean] default = False
                                ! There are no diapycnal mass fluxes if ADIABATIC is
                                ! true. This assumes that KD = KDML = 0.0 and that
                                ! there is no buoyancy forcing, but makes the model
                                ! faster by eliminating subroutine calls.
VARIABLE_WINDS = False          !   [Boolean] default = True
                                ! If true, the winds vary in time after the initialization.
VARIABLE_BUOYFORCE = False      !   [Boolean] default = True
                                ! If true, the buoyancy forcing varies in time after the
                                ! initialization of the model.
BUOY_CONFIG = "NONE"            !
                                ! The character string that indicates how buoyancy forcing
                                ! is specified. Valid options include (file), (zero),
                                ! (linear), (USER), and (NONE).
WIND_CONFIG = "zero"            !
                                ! The character string that indicates how wind forcing
                                ! is specified. Valid options include (file), (2gyre),
                                ! (1gyre), (gyres), (zero), and (USER).
RESTOREBUOY = False             !   [Boolean] default = False
                                ! If true, the buoyancy fluxes drive the model back
                                ! toward some specified surface state with a rate
                                ! given by FLUXCONST.
GUST_CONST = 0.02               !   [Pa] default = 0.02
                                ! The background gustiness in the winds.
READ_GUST_2D = False            !   [Boolean] default = False
                                ! If true, use a 2-dimensional gustiness supplied from
                                ! an input file
PARALLEL_RESTARTFILES = False   !   [Boolean] default = False
                                ! If true, each processor writes its own restart file,
                                ! otherwise a single restart file is generated
LARGE_FILE_SUPPORT = True       !   [Boolean] default = True
                                ! If true, use the file-size limits with NetCDF large
                                ! file support (4Gb), otherwise the limit is 2Gb.
    !  Parameters of module MOM_sum_output
CALCULATE_APE = True            !   [Boolean] default = True
                                ! If true, calculate the available potential energy of
                                ! the interfaces.  Setting this to false reduces the
                                ! memory footprint of high-PE-count models dramatically.
WRITE_STOCKS = True             !   [Boolean] default = True
                                ! If true, write the integrated tracer amounts to stdout
                                ! when the energy files are written.
ENABLE_THERMODYNAMICS = True    !   [Boolean] default = True
                                ! If true, Temperature and salinity are used as state
                                ! variables.
DT = 300.0                      !   [s]
                                ! The (baroclinic) dynamics time step.
MAXTRUNC = 10                   !   [truncations save_interval-1] default = 0
                                ! The run will be stopped, and the day set to a very
                                ! large value if the velocity is truncated more than
                                ! MAXTRUNC times between energy saves.  Set MAXTRUNC to 0
                                ! to stop if there is any truncation of velocities.
MAX_ENERGY = 0.0                !   [m2 s-2] default = 0.0
                                ! The maximum permitted average energy per unit mass; the
                                ! model will be stopped if there is more energy than
                                ! this.  If zero or negative, this is set to 10*MAXVEL^2.
ENERGYFILE = "timestats"        ! default = "timestats"
                                ! The file to use to write the energies and globally
                                ! summed diagnostics.
NORMALIZED_SUM_OUT = True       !   [Boolean] default = True
                                ! If true, normalize the summed diagnostic output values
                                ! by the totals
TIMEUNIT = 3600.0               !   [s] default = 8.64E+04
                                ! The time unit in seconds a number of input fields
READ_DEPTH_LIST = False         !   [Boolean] default = False
                                ! Read the depth list from a file if it exists or
                                ! create that file otherwise.
DEPTH_LIST_MIN_INC = 1.0E-10    !   [m] default = 1.0E-10
                                ! The minimum increment between the depths of the
                                ! entries in the depth-list file.
MAXCPU = 2.88E+04               !   [wall-clock seconds] default = -1.0
                                ! The maximum amount of cpu time per processor for which
                                ! MOM should run before saving a restart file and
                                ! quitting with a return value that indicates that a
                                ! further run is required to complete the simulation.
                                ! If automatic restarts are not desired, use a negative
                                ! value for MAXCPU.  MAXCPU has units of wall-clock
                                ! seconds, so the actual CPU time used is larger by a
                                ! factor of the number of processors used.
CPU_TIME_FILE = "CPU_stats"     ! default = "CPU_stats"
                                ! The file into which CPU time is written.
    !  Parameters of module MOM_main (MOM_driver)
DT_FORCING = 1800.0             !   [s] default = 300.0
                                ! The time step for changing forcing, coupling with other
                                ! components, or potentially writing certain diagnostics.
                                ! The default value is given by DT.
DAYMAX = 10.0                   !   [hours] default = 24.0
                                ! The final time of the whole simulation, in units of
                                ! TIMEUNIT seconds.  This also sets the potential end
                                ! time of the present run segment if the end time is
                                ! not set (as it was here) via ocean_solo_nml in input.nml.
RESTART_CONTROL = -1            ! default = 1
                                ! An integer whose bits encode which restart files are
                                ! written. Add 2 (bit 1) for a time-stamped file, and odd
                                ! (bit 0) for a non-time-stamped file. A non-time-stamped
                                ! restart file is saved at the end of the run segment
                                ! for any non-negative value.
RESTINT = 240.0                 !   [hours] default = 0.0
                                ! The interval between saves of the restart file in units
                                ! of TIMEUNIT.  Use 0 (the default) to not save
                                ! incremental restart files at all.
ENERGYSAVEDAYS = 1.0            !   [hours] default = 4.32E+04
                                ! The interval in units of TIMEUNIT between saves of the
                                ! energies of the run and other globally summed diagnostics.
ICE_SHELF = False               !   [Boolean] default = False
                                ! If true, call the code to apply an ice shelf model over
                                ! some of the domain.
SEND_LOG_TO_STDOUT = False      !   [Boolean] default = False
                                ! If true, all log messages are also sent to stdout.
REPORT_UNUSED_PARAMS = False    !   [Boolean] default = False
                                ! If true, report any parameter lines that are not used
                                ! in the run.
FATAL_UNUSED_PARAMS = False     !   [Boolean] default = False
                                ! If true, kill the run if there are any unused
                                ! parameters.
DOCUMENT_FILE = "MOM_parameter_doc" ! default = "MOM_parameter_doc"
                                ! A file where all run-time parameters, their settings
                                ! and defaults are documented, or blank for no such file.
MINIMAL_DOCUMENTATION = False   !   [Boolean] default = False
                                ! If true, document only those run-time parameters that
                                ! differ from their defaults.