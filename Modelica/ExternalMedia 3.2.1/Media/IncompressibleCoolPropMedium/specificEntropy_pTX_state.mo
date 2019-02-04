within ExternalMedia.Media.IncompressibleCoolPropMedium;
function specificEntropy_pTX_state
  "returns specific entropy for a given p and T"
  extends Modelica.Icons.Function;
  input AbsolutePressure p "Pressure";
  input Temperature T "Temperature";
  input MassFraction X[nX] "Mass fractions";
  input ThermodynamicState state;
  output SpecificEntropy s "Specific Entropy";
algorithm
  s := specificEntropy(state);
annotation (
  Inline=false,
  LateInline=true);
end specificEntropy_pTX_state;
