within ExternalMedia.Test.TestOMC.TestHeliumHardCodedProperties;
model TypicalHeliumProperties
  extends Modelica.Icons.Example;
  package Medium = Helium;
  Medium.ThermodynamicState state;
  Medium.Temperature T;
  Medium.Temperature Tcrit=Medium.fluidConstants[1].criticalTemperature;
  Medium.AbsolutePressure p;
  Modelica.Units.SI.Density d;
  Medium.AbsolutePressure pcrit=Medium.fluidConstants[1].criticalPressure;
  Modelica.Units.SI.SpecificHeatCapacity cv=Medium.specificHeatCapacityCv(state);
equation
  T = 5;
  p = 5e5;
  state = Medium.setState_pT(p, T);
  d = Medium.density(state);
end TypicalHeliumProperties;
