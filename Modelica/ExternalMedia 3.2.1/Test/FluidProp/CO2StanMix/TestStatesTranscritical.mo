within ExternalMedia.Test.FluidProp.CO2StanMix;
model TestStatesTranscritical
  "Test case with state records, transcritical conditions"
  import ExternalMedia;
  extends Modelica.Icons.Example;
  extends ExternalMedia.Test.GenericModels.TestStates(
                                   redeclare package Medium =
        ExternalMedia.Examples.CO2StanMix);
equation
  p1 = 1e6 + time*10e6;
  h1 = -4.2e5 + 0*time;
  p2 = 1e6 + time*10e6;
  T2 = 330;
end TestStatesTranscritical;
