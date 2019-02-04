within ExternalMedia.Media.IncompressibleCoolPropMedium;
function density_pTX_state
  extends Modelica.Icons.Function;
  input AbsolutePressure p "Pressure";
  input Temperature T "Temperature";
  input MassFraction X[nX] "Mass fractions";
  input ThermodynamicState state;
  output Density d "Density";
algorithm
  d := density(state);
annotation (
  Inline=false,
  LateInline=true);
end density_pTX_state;
