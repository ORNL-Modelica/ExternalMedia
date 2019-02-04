within ExternalMedia.Test.FluidProp.CO2StanMix;
model TestStatesSatSubcritical
  "Test case with state + sat records, subcritical conditions"
  import ExternalMedia;
  extends Modelica.Icons.Example;
  extends ExternalMedia.Test.GenericModels.TestStatesSat(
                                      redeclare package Medium =
        ExternalMedia.Examples.CO2StanMix);
equation
  p1 = 1e6;
  h1 = -4.2e5 + 6e5*time;
  p2 = 1e6;
  T2 = 250 + 50*time;
end TestStatesSatSubcritical;
