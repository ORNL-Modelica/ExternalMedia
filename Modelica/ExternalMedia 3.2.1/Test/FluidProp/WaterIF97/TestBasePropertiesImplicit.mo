within ExternalMedia.Test.FluidProp.WaterIF97;
model TestBasePropertiesImplicit
  "Test case using BaseProperties and implicit equations"
  import ExternalMedia;
  extends Modelica.Icons.Example;
  extends ExternalMedia.Test.GenericModels.TestBasePropertiesImplicit(
                                                   redeclare package
      Medium = ExternalMedia.Examples.WaterIF97, hstart=1e5);
equation
  p1 = 1e5 + 1e5*time;
  T1 = 300 + 25*time;
  p2 = 1e5 + 1e5*time;
  T2 = 300;
end TestBasePropertiesImplicit;
