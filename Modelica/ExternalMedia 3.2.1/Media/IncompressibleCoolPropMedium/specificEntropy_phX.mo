within ExternalMedia.Media.IncompressibleCoolPropMedium;
function specificEntropy_phX "returns specific entropy for a given p and h"
extends Modelica.Icons.Function;
input AbsolutePressure p "Pressure";
input SpecificEnthalpy h "Specific Enthalpy";
input MassFraction X[nX] "Mass fractions";
input Integer phase=1 "2 for two-phase, 1 for one-phase, 0 if not known";
output SpecificEntropy s "Specific Entropy";
algorithm
s := specificEntropy_phX_state(p=p, h=h, X=X, state=setState_phX(p=p, h=h, X=X, phase=phase));
annotation (
Inline=true);
end specificEntropy_phX;
