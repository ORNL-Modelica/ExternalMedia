within ExternalMedia.Test.FluidProp.WaterIF95;
model TestBasePropertiesExplicit
  "Test case using BaseProperties and explicit equations"
  import ExternalMedia;
  extends Modelica.Icons.Example;
  extends ExternalMedia.Test.GenericModels.TestBasePropertiesExplicit(
                                                   redeclare package
      Medium = ExternalMedia.Examples.WaterIF95);
equation
  p1 = 1e5 + 1e5*time;
  h1 = 1e5;
  p2 = 1e5;
  h2 = 1e5 + 2e5*time;
end TestBasePropertiesExplicit;
