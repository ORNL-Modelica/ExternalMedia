within ExternalMedia.Test.FluidProp.WaterIF97;
model TestStates "Test case with state records"
  import ExternalMedia;
  extends Modelica.Icons.Example;
  extends ExternalMedia.Test.GenericModels.TestStates(
                                   redeclare package Medium =
        ExternalMedia.Examples.WaterIF97);
equation
  p1 = 1e5;
  h1 = 1e5 + 2e5*time;
  p2 = 1e5;
  T2 = 300 + 50*time;
end TestStates;
