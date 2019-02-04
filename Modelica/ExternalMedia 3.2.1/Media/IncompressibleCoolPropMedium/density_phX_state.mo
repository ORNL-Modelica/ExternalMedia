within ExternalMedia.Media.IncompressibleCoolPropMedium;
function density_phX_state "returns density for given p and h"
  extends Modelica.Icons.Function;
  input AbsolutePressure p "Pressure";
  input SpecificEnthalpy h "Enthalpy";
  input MassFraction X[nX] "Mass fractions";
  input ThermodynamicState state;
  output Density d "density";
algorithm
  d := density(state);
annotation (
  Inline=false,
  LateInline=true,
  derivative(noDerivative=state,noDerivative=X)=density_phX_der);
end density_phX_state;
