within ExternalMedia.Test.FluidProp.WaterTPSI;
model CompareModelicaFluidProp_vapour
  "Comparison between Modelica IF97 and FluidProp TPSI models - liquid"
  import ExternalMedia;
  extends Modelica.Icons.Example;
  extends ExternalMedia.Test.GenericModels.CompareModelicaTestMedium(
    redeclare package ModelicaMedium = Modelica.Media.Water.StandardWater,
    redeclare package FluidPropMedium = ExternalMedia.Examples.WaterTPSI,
    pmin=60e5,
    pmax=60e5,
    hmin=2800e3,
    hmax=3200e3);
end CompareModelicaFluidProp_vapour;
