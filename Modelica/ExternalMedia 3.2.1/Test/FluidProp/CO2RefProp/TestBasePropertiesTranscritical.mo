within ExternalMedia.Test.FluidProp.CO2RefProp;
model TestBasePropertiesTranscritical
  "Test case using BaseProperties and explicit equations"
  import ExternalMedia;
  extends Modelica.Icons.Example;
  extends ExternalMedia.Test.GenericModels.TestBasePropertiesExplicit(
                                                   redeclare package
      Medium = ExternalMedia.Examples.CO2RefProp);
equation
  p1 = 1e6 + time*10e6;
  h1 = 1.0e5;
  p2 = 1e6 + time*10e6;
  h2 = 7.0e5;
end TestBasePropertiesTranscritical;
