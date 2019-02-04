within ExternalMedia.Test.CoolProp.CO2;
model TestBasePropertiesExplicit
  "Test case using BaseProperties and explicit equations"
  extends Modelica.Icons.Example;
  extends GenericModels.TestBasePropertiesExplicit(          redeclare package
              Medium = ExternalMedia.Examples.CO2CoolProp);
equation
  p1 = 8e6;
  h1 = 1.0e5 + 6e5*time;
  p2 = 1e6;
  h2 = 1.0e5 + 6e5*time;
end TestBasePropertiesExplicit;
