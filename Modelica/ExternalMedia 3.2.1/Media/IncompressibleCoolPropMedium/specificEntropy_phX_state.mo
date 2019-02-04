within ExternalMedia.Media.IncompressibleCoolPropMedium;
function specificEntropy_phX_state
  "returns specific entropy for a given p and h"
  extends Modelica.Icons.Function;
  input AbsolutePressure p "Pressure";
  input SpecificEnthalpy h "Specific Enthalpy";
  input MassFraction X[nX] "Mass fractions";
  input ThermodynamicState state;
  output SpecificEntropy s "Specific Entropy";
algorithm
  s := specificEntropy(state);
annotation (
  Inline=false,
  LateInline=true,
  derivative(noDerivative=state,noDerivative=X)=specificEntropy_phX_der);
end specificEntropy_phX_state;
