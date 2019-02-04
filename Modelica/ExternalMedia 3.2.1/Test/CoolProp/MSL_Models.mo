within ExternalMedia.Test.CoolProp;
model MSL_Models
  import ExternalMedia;
  extends Modelica.Icons.Example;

  ExternalMedia.Test.MSL_Models.BranchingDynamicPipes branchingDynamicPipes(
      redeclare package NewMedium = ExternalMedia.Examples.WaterCoolProp)
    annotation (Placement(transformation(extent={{-50,20},{-30,40}})));
end MSL_Models;
