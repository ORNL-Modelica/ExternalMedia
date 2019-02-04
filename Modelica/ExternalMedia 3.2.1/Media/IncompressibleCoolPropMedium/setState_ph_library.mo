within ExternalMedia.Media.IncompressibleCoolPropMedium;
function setState_ph_library "Return thermodynamic state record from p and h"
  extends Modelica.Icons.Function;
  input AbsolutePressure p "pressure";
  input SpecificEnthalpy h "specific enthalpy";
  input Integer phase = 1 "2 for two-phase, 1 for one-phase, 0 if not known";
  input String name "name and mass fractions";
  output ThermodynamicState state;
external "C" TwoPhaseMedium_setState_ph_C_impl(p, h, phase, state, mediumName, libraryName, name)
  annotation(Include="#include \"externalmedialib.h\"", Library="ExternalMediaLib", IncludeDirectory="modelica://ExternalMedia/Resources/Include", LibraryDirectory="modelica://ExternalMedia/Resources/Library");
end setState_ph_library;
