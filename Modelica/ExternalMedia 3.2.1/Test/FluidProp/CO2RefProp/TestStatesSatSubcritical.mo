within ExternalMedia.Test.FluidProp.CO2RefProp;
model TestStatesSatSubcritical
  "Test case state + sat records, subcritical conditions"
  import ExternalMedia;
  extends Modelica.Icons.Example;
  extends ExternalMedia.Test.GenericModels.TestStatesSat(
                                      redeclare package Medium =
        ExternalMedia.Examples.CO2RefProp);
equation
  p1 = 1e6;
  h1 = 1.0e5 + 6e5*time;
  p2 = 1e6;
  T2 = 250 + 50*time;
end TestStatesSatSubcritical;
