within ExternalMedia.Test.FluidProp.WaterTPSI;
model CompareModelicaFluidProp_liquid
  "Comparison between Modelica IF97 and FluidProp TPSI models - liquid"
  import ExternalMedia;
  extends Modelica.Icons.Example;
  extends ExternalMedia.Test.GenericModels.CompareModelicaTestMedium(
    redeclare package ModelicaMedium = Modelica.Media.Water.StandardWater,
    redeclare package FluidPropMedium = ExternalMedia.Examples.WaterTPSI,
    pmin=1e5,
    pmax=1e5,
    hmin=1e5,
    hmax=4e5);
end CompareModelicaFluidProp_liquid;
