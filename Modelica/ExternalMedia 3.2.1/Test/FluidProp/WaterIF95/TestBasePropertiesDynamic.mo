within ExternalMedia.Test.FluidProp.WaterIF95;
model TestBasePropertiesDynamic
  "Test case using BaseProperties and dynamic equations"
  import ExternalMedia;
  extends Modelica.Icons.Example;
  extends ExternalMedia.Test.GenericModels.TestBasePropertiesDynamic(
    redeclare package Medium = ExternalMedia.Examples.WaterIF95,
    Tstart=300,
    Kv0=1.00801e-2);
equation
  // Inlet pump equations
  medium.p - p_atm = 2e5 - (1e5/100^2)*win^2;
  hin = 1e5;
  // Input variables
  Kv = if time < 50 then Kv0 else Kv0*1.1;
  Q = if time < 1 then 0 else 1e7;
  annotation (experiment(StopTime=80, Tolerance=1e-007),
      experimentSetupOutput(equdistant=false));
end TestBasePropertiesDynamic;
