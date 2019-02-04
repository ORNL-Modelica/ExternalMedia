within ExternalMedia.Test.FluidProp.CO2StanMix;
model TestBasePropertiesDynamic
  "Test case using BaseProperties and dynamic equations"
  import ExternalMedia;
  extends Modelica.Icons.Example;
  extends ExternalMedia.Test.GenericModels.TestBasePropertiesDynamic(
    redeclare package Medium = ExternalMedia.Examples.CO2StanMix,
    Tstart=300,
    hstart=0,
    pstart=1e6,
    Kv0=1.00801e-4,
    V=0.1);
equation
  // Inlet equations
  win = 1;
  hin = 0;
  // Input variables
  Kv = if time < 50 then Kv0 else Kv0*1.1;
  Q = if time < 1 then 0 else 1e4;
  annotation (experiment(StopTime=80, Tolerance=1e-007),
      experimentSetupOutput(equdistant=false));
end TestBasePropertiesDynamic;
