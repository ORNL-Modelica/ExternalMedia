within ExternalMedia.Test.TestOMC.TestHeliumHardCodedProperties;
model TestSaturatedHelium
  extends Modelica.Icons.Example;
  package Medium = Helium;
  Medium.SaturationProperties sat;
  Medium.Temperature T;
  Medium.AbsolutePressure p;
  Modelica.Units.SI.Density dl;
  Modelica.Units.SI.Density dv;
equation
  p = 1e5 + 1.27e5*time;
  sat = Medium.setSat_p(p);
  dv = Medium.dewDensity(sat);
  dl = Medium.bubbleDensity(sat);
  T = Medium.saturationTemperature_sat(sat);
end TestSaturatedHelium;
