within ExternalMedia.Media.IncompressibleCoolPropMedium;
function setState_pT_library "Return thermodynamic state record from p and T"
  extends Modelica.Icons.Function;
  input AbsolutePressure p "pressure";
  input Temperature T "temperature";
  input Integer phase = 1 "2 for two-phase, 1 for one-phase, 0 if not known";
  input String name "name and mass fractions";
  output ThermodynamicState state;
external "C" TwoPhaseMedium_setState_pT_C_impl(p, T, state, mediumName, libraryName, name)
  annotation(Include="#include \"externalmedialib.h\"", Library="ExternalMediaLib", IncludeDirectory="modelica://ExternalMedia/Resources/Include", LibraryDirectory="modelica://ExternalMedia/Resources/Library");
end setState_pT_library;
