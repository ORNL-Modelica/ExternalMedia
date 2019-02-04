within ExternalMedia.Test.FluidProp.WaterIF95;
model CompareModelicaFluidProp_liquid
  "Comparison between Modelica IF97 and FluidProp IF95 models - liquid"
  import ExternalMedia;
  extends Modelica.Icons.Example;
  extends ExternalMedia.Test.GenericModels.CompareModelicaTestMedium(
    redeclare package ModelicaMedium = Modelica.Media.Water.StandardWater,
    redeclare package FluidPropMedium = ExternalMedia.Examples.WaterIF95,
    pmin=1e5,
    pmax=1e5,
    hmin=1e5,
    hmax=4e5);
end CompareModelicaFluidProp_liquid;
