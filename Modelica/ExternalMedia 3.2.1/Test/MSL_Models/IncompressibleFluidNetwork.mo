within ExternalMedia.Test.MSL_Models;
model IncompressibleFluidNetwork
  "From Fluid library, needs medium definition"
  extends Modelica.Fluid.Examples.IncompressibleFluidNetwork(
    redeclare package Medium=NewMedium);
  replaceable package NewMedium=Modelica.Media.Water.StandardWater constrainedby
    Modelica.Media.Interfaces.PartialMedium
    annotation(choicesAllMatching=true);
end IncompressibleFluidNetwork;
