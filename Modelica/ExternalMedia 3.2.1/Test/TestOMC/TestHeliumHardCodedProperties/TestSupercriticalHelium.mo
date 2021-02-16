within ExternalMedia.Test.TestOMC.TestHeliumHardCodedProperties;
model TestSupercriticalHelium
  extends Modelica.Icons.Example;
  package Medium = Helium;
  Medium.ThermodynamicState state;
  Medium.Temperature T;
  Medium.Temperature Tcrit=Medium.fluidConstants[1].criticalTemperature;
  Medium.AbsolutePressure p;
  Modelica.Units.SI.Density d;
  Medium.AbsolutePressure pcrit=Medium.fluidConstants[1].criticalPressure;
equation
  T = 300 - 297.5*time;
  p = 4e5 + 0*time;
  state = Medium.setState_pT(p, T);
  d = Medium.density(state);
end TestSupercriticalHelium;
