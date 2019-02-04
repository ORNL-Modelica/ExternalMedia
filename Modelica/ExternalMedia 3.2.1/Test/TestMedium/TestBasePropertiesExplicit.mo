within ExternalMedia.Test.TestMedium;
model TestBasePropertiesExplicit
  "Test case using TestMedium and BaseProperties with explicit equations"
  extends Modelica.Icons.Example;
  replaceable package Medium = Media.TestMedium;
  ExternalMedia.Test.TestMedium.GenericModels.CompleteBaseProperties
    medium1(redeclare package Medium = Medium)
    "Constant pressure, varying enthalpy";
  ExternalMedia.Test.TestMedium.GenericModels.CompleteBaseProperties
    medium2(redeclare package Medium = Medium)
    "Varying pressure, constant enthalpy";
equation
  medium1.baseProperties.p = 1e5 + 1e5*time;
  medium1.baseProperties.h = 1e5;
  medium2.baseProperties.p = 1e5;
  medium2.baseProperties.h = 1e5 + 2e5*time;
end TestBasePropertiesExplicit;
