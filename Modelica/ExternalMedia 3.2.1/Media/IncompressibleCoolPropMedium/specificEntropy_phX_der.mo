within ExternalMedia.Media.IncompressibleCoolPropMedium;
function specificEntropy_phX_der "time derivative of specificEntropy_phX"
  extends Modelica.Icons.Function;
  input AbsolutePressure p;
  input SpecificEnthalpy h;
  input MassFraction X[nX] "Mass fractions";
  input ThermodynamicState state;
  input Real p_der "time derivative of pressure";
  input Real h_der "time derivative of specific enthalpy";
  output Real s_der "time derivative of specific entropy";
algorithm
  s_der := p_der*(-1.0/(state.d*state.T))
         + h_der*( 1.0/state.T);
annotation (
  Inline=true);
end specificEntropy_phX_der;
