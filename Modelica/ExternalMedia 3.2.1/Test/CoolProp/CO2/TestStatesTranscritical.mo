within ExternalMedia.Test.CoolProp.CO2;
model TestStatesTranscritical
  "Test case with state records, transcritical conditions"
  extends Modelica.Icons.Example;
  extends GenericModels.TestStates(          redeclare package Medium =
        ExternalMedia.Examples.CO2CoolProp);
equation
  p1 = 1e6 + time*10e6;
  h1 = 1.0e5;
  p2 = 1e6 + time*10e6;
  T2 = 330;
end TestStatesTranscritical;
