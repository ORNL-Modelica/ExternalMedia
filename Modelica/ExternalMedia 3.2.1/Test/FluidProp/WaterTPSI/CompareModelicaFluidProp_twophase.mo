within ExternalMedia.Test.FluidProp.WaterTPSI;
model CompareModelicaFluidProp_twophase
  "Comparison between Modelica IF97 and FluidProp TPSI models - liquid"
  import ExternalMedia;
  extends Modelica.Icons.Example;
  extends ExternalMedia.Test.GenericModels.CompareModelicaTestMedium(
    redeclare package ModelicaMedium = Modelica.Media.Water.StandardWater,
    redeclare package FluidPropMedium = ExternalMedia.Examples.WaterTPSI,
    pmin=60e5,
    pmax=60e5,
    hmin=1000e3,
    hmax=2000e3);
end CompareModelicaFluidProp_twophase;
