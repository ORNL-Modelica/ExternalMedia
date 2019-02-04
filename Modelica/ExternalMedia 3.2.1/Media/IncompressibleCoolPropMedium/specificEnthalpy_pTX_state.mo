within ExternalMedia.Media.IncompressibleCoolPropMedium;
function specificEnthalpy_pTX_state
  "returns specific enthalpy for given p and T"
  extends Modelica.Icons.Function;
  input AbsolutePressure p "Pressure";
  input Temperature T "Temperature";
  input MassFraction X[nX] "Mass fractions";
  input ThermodynamicState state;
  output SpecificEnthalpy h "specific enthalpy";
algorithm
  h := specificEnthalpy(state);
annotation (
  Inline=false,
  LateInline=true,
  inverse(T=temperature_phX_state(p=p, h=h, X=X, state=state)));
end specificEnthalpy_pTX_state;
