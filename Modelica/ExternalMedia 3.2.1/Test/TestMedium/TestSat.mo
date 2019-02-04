within ExternalMedia.Test.TestMedium;
model TestSat
  "Test case using TestMedium with a single saturation properties record"
  extends Modelica.Icons.Example;
  replaceable package Medium = Media.TestMedium;
  Medium.SaturationProperties sat;
equation
  sat = Medium.setSat_p(1e5 + 1e5*time);
end TestSat;
