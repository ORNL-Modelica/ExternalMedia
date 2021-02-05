within ExternalMedia.Test.GenericModels;
partial model CompareModelicaTestMedium
  "Comparison between Modelica and TestMedium models"
  replaceable package ModelicaMedium =
      Modelica.Media.Water.WaterIF97_ph
    constrainedby Modelica.Media.Interfaces.PartialMedium
    annotation(choicesAllMatching=true);
  replaceable package TestMedium =
      ExternalMedia.Test.GenericModels.DummyTwoPhaseMedium
    constrainedby Modelica.Media.Interfaces.PartialMedium
    annotation(choicesAllMatching=true);
  CompleteBaseProperties modelicaMedium(redeclare package Medium =
        ModelicaMedium) "Modelica medium model";
  CompleteBaseProperties testMedium(redeclare package Medium = TestMedium)
    "TestMedium medium model";
  parameter Modelica.SIunits.Pressure pmin;
  parameter Modelica.SIunits.Pressure pmax;
  parameter Modelica.SIunits.SpecificEnthalpy hmin;
  parameter Modelica.SIunits.SpecificEnthalpy hmax;
equation
  modelicaMedium.baseProperties.p = pmin + (pmax - pmin)*time;
  modelicaMedium.baseProperties.h = hmin + (hmax - hmin)*time;
  testMedium.baseProperties.p = pmin + (pmax - pmin)*time;
  testMedium.baseProperties.h = hmin + (hmax - hmin)*time;
end CompareModelicaTestMedium;