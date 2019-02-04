within ExternalMedia.Media.IncompressibleCoolPropMedium;
function temperature_phX_state "returns temperature for given p and h"
  extends Modelica.Icons.Function;
  input AbsolutePressure p "Pressure";
  input SpecificEnthalpy h "Enthalpy";
  input MassFraction X[nX] "Mass fractions";
  input ThermodynamicState state;
  output Temperature T "Temperature";
algorithm
  T := temperature(state);
annotation (
  Inline=false,
  LateInline=true,
  inverse(h=specificEnthalpy_pTX_state(p=p, T=T, X=X, state=state)));
end temperature_phX_state;
