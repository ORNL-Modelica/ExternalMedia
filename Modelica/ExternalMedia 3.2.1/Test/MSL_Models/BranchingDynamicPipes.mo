within ExternalMedia.Test.MSL_Models;
model BranchingDynamicPipes "From Fluid library, needs medium definition"
  extends Modelica.Fluid.Examples.BranchingDynamicPipes(
    redeclare package Medium=NewMedium);

  replaceable package NewMedium=Modelica.Media.Water.StandardWater constrainedby
    Modelica.Media.Interfaces.PartialMedium
    annotation(choicesAllMatching=true);

  //replaceable package NewMedium=ExternalMedia.Examples.WaterCoolProp;
  //replaceable package NewMedium=Modelica.Media.Water.StandardWater;
  //replaceable package NewMedium=ExternalMedia.Examples.WaterIF97;
end BranchingDynamicPipes;
