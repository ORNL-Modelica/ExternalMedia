within ExternalMedia.Test.GenericModels;
partial model TestBasePropertiesImplicit
  "Test case using BaseProperties and implicit equations"
  replaceable package Medium =
      ExternalMedia.Test.GenericModels.DummyTwoPhaseMedium
    constrainedby Modelica.Media.Interfaces.PartialTwoPhaseMedium
    annotation(choicesAllMatching=true);
  parameter Medium.SpecificEnthalpy hstart
    "Start value for specific enthalpy";
  CompleteBaseProperties medium1(redeclare package Medium = Medium,
      baseProperties(h(start=hstart)))
    "Constant pressure, varying enthalpy";
  CompleteBaseProperties medium2(redeclare package Medium = Medium,
      baseProperties(h(start=hstart)))
    "Varying pressure, constant enthalpy";
  Medium.AbsolutePressure p1;
  Medium.AbsolutePressure p2;
  Medium.Temperature T1;
  Medium.Temperature T2;
equation
  medium1.baseProperties.p = p1;
  medium1.baseProperties.T = T1;
  medium2.baseProperties.p = p2;
  medium2.baseProperties.T = T2;
end TestBasePropertiesImplicit;
