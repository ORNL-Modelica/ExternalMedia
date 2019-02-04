within ExternalMedia.Test.TestMedium;
model TestConstants "Test case using TestMedium with package constants"
  extends Modelica.Icons.Example;
  replaceable package Medium = Media.TestMedium;
  Medium.Temperature Tc=Medium.fluidConstants[1].criticalTemperature;
end TestConstants;
