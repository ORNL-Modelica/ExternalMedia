within ExternalMedia.Test.FluidProp.CO2StanMix;
model TestBasePropertiesExplicit
  "Test case using BaseProperties and explicit equations"
  import ExternalMedia;
  extends Modelica.Icons.Example;
  extends ExternalMedia.Test.GenericModels.TestBasePropertiesExplicit(
                                                   redeclare package
      Medium = ExternalMedia.Examples.CO2StanMix);
equation
  p1 = 8e6;
  h1 = -4.2e5 + 6e5*time;
  p2 = 1e6;
  h2 = -4.2e5 + 6e5*time;
end TestBasePropertiesExplicit;
