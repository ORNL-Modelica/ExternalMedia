within ExternalMedia.Test.TestMedium;
model TestState "Test case using TestMedium with a single state record"
  extends Modelica.Icons.Example;
  replaceable package Medium = Media.TestMedium;
  Medium.ThermodynamicState state;
equation
  state = Medium.setState_ph(1e5, 1e5 + 1e5*time);
end TestState;
