within ExternalMedia.Test.FluidProp.CO2StanMix;
model TestStatesSupercritical
  "Test case with state records, supercritical conditions"
  import ExternalMedia;
  extends Modelica.Icons.Example;
  extends ExternalMedia.Test.GenericModels.TestStates(
                                   redeclare package Medium =
        ExternalMedia.Examples.CO2StanMix);
equation
  p1 = 8e6;
  h1 = -4.2e5 + 6e5*time;
  p2 = 8e6;
  T2 = 280 + 50*time;
end TestStatesSupercritical;
