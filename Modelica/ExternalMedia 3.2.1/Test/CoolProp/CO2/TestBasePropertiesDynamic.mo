within ExternalMedia.Test.CoolProp.CO2;
model TestBasePropertiesDynamic
  "Test case using BaseProperties and dynamic equations"
  extends Modelica.Icons.Example;
  extends GenericModels.TestBasePropertiesDynamic(
    redeclare package Medium = ExternalMedia.Examples.CO2CoolProp,
    Tstart=300,
    hstart=4e5,
    pstart=1e6,
    Kv0=1.00801e-4,
    V=0.1);
equation
  // Inlet equations
  win = 1;
  hin = 5e5;
  // Input variables
  Kv = if time < 50 then Kv0 else Kv0*1.1;
  Q = if time < 1 then 0 else 1e4;
  annotation (experiment(StopTime=80, Tolerance=1e-007),
      experimentSetupOutput(equdistant=false));
end TestBasePropertiesDynamic;
