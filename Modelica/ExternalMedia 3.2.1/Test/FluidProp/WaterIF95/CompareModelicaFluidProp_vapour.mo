within ExternalMedia.Test.FluidProp.WaterIF95;
model CompareModelicaFluidProp_vapour
  "Comparison between Modelica IF97 and FluidProp IF95 models - liquid"
  import ExternalMedia;
  extends Modelica.Icons.Example;
  extends ExternalMedia.Test.GenericModels.CompareModelicaTestMedium(
    redeclare package ModelicaMedium = Modelica.Media.Water.StandardWater,
    redeclare package FluidPropMedium = ExternalMedia.Examples.WaterIF95,
    pmin=60e5,
    pmax=60e5,
    hmin=2800e3,
    hmax=3200e3);
end CompareModelicaFluidProp_vapour;
