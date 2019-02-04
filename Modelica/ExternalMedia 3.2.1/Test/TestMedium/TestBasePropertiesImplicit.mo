within ExternalMedia.Test.TestMedium;
model TestBasePropertiesImplicit
  "Test case using TestMedium and BaseProperties with implicit equations"
  replaceable package Medium = Media.TestMedium;
  extends Modelica.Icons.Example;
  ExternalMedia.Test.TestMedium.GenericModels.CompleteBaseProperties
    medium1(redeclare package Medium = Medium, baseProperties(h(start=1e5)))
    "Constant pressure, varying enthalpy";
  ExternalMedia.Test.TestMedium.GenericModels.CompleteBaseProperties
    medium2(redeclare package Medium = Medium, baseProperties(h(start=1e5)))
    "Varying pressure, constant enthalpy";
equation
  medium1.baseProperties.p = 1e5*time;
  medium1.baseProperties.T = 300 + 25*time;
  medium2.baseProperties.p = 1e5 + 1e5*time;
  medium2.baseProperties.T = 300;
end TestBasePropertiesImplicit;
