within ExternalMedia.Test.FluidProp.CO2StanMix;
model TestBasePropertiesTranscritical
  "Test case using BaseProperties and explicit equations"
  import ExternalMedia;
  extends Modelica.Icons.Example;
  extends ExternalMedia.Test.GenericModels.TestBasePropertiesExplicit(
                                                   redeclare package
      Medium = ExternalMedia.Examples.CO2StanMix);
equation
  p1 = 1e6 + time*10e6;
  h1 = -4.2e5 + 0*time;
  p2 = 1e6 + time*10e6;
  h2 = 2.0e5;
end TestBasePropertiesTranscritical;
