within ExternalMedia.Test.GenericModels;
partial model TestBasePropertiesExplicit
  "Test case using BaseProperties and explicit equations"
  replaceable package Medium =
      ExternalMedia.Test.GenericModels.DummyTwoPhaseMedium
    constrainedby Modelica.Media.Interfaces.PartialTwoPhaseMedium
    annotation(choicesAllMatching=true);
  CompleteBaseProperties medium1(redeclare package Medium = Medium)
    "Constant pressure, varying enthalpy";
  CompleteBaseProperties medium2(redeclare package Medium = Medium)
    "Varying pressure, constant enthalpy";
  Medium.AbsolutePressure p1;
  Medium.AbsolutePressure p2;
  Medium.SpecificEnthalpy h1;
  Medium.SpecificEnthalpy h2;
equation
  medium1.baseProperties.p = p1;
  medium1.baseProperties.h = h1;
  medium2.baseProperties.p = p2;
  medium2.baseProperties.h = h2;
end TestBasePropertiesExplicit;
