within ExternalMedia.Test.CoolProp.CO2;
model TestStatesSupercritical
  "Test case with state records, supercritical conditions"
  extends Modelica.Icons.Example;
  extends GenericModels.TestStates(          redeclare package Medium =
        ExternalMedia.Examples.CO2CoolProp);
equation
  p1 = 8e6;
  h1 = 1.0e5 + 6e5*time;
  p2 = 8e6;
  T2 = 280 + 50*time;
end TestStatesSupercritical;
