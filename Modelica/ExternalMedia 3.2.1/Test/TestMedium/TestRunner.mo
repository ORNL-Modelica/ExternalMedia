within ExternalMedia.Test.TestMedium;
model TestRunner "A model to collect generaic test cases"
  import ExternalMedia;
  extends Modelica.Icons.Example;
  ExternalMedia.Test.GenericModels.CompleteFluidConstants
    completeFluidConstants(redeclare package Medium =
        ExternalMedia.Media.TestMedium)
    annotation (Placement(transformation(extent={{-60,60},{-40,80}})));
equation

end TestRunner;
