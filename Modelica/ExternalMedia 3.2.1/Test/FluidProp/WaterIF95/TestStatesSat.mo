within ExternalMedia.Test.FluidProp.WaterIF95;
model TestStatesSat "Test case with state + sat records"
  import ExternalMedia;
  extends Modelica.Icons.Example;
  extends ExternalMedia.Test.GenericModels.TestStatesSat(
                                      redeclare package Medium =
        ExternalMedia.Examples.WaterIF95);
equation
  p1 = 1e5;
  h1 = 1e5 + 2e5*time;
  p2 = 1e5;
  T2 = 300 + 50*time;
end TestStatesSat;