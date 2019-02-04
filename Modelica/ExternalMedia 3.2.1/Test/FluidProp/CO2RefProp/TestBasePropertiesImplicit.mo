within ExternalMedia.Test.FluidProp.CO2RefProp;
model TestBasePropertiesImplicit
  "Test case using BaseProperties and implicit equations"
  import ExternalMedia;
  extends Modelica.Icons.Example;
  extends ExternalMedia.Test.GenericModels.TestBasePropertiesImplicit(
                                                   redeclare package
      Medium = ExternalMedia.Examples.CO2RefProp, hstart=1e5);
equation
  p1 = 8e6;
  T1 = 280 + 50*time;
  p2 = 1e6;
  T2 = 280 + 50*time;
end TestBasePropertiesImplicit;
