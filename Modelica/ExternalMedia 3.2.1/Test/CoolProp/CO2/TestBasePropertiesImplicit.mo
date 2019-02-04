within ExternalMedia.Test.CoolProp.CO2;
model TestBasePropertiesImplicit
  "Test case using BaseProperties and implicit equations"
  extends Modelica.Icons.Example;
  extends GenericModels.TestBasePropertiesImplicit(          redeclare package
              Medium = ExternalMedia.Examples.CO2CoolProp, hstart=1e5);
equation
  p1 = 8e6;
  T1 = 280 + 50*time;
  p2 = 1e6;
  T2 = 280 + 50*time;
end TestBasePropertiesImplicit;
