within ExternalMedia.Examples;
package LiBrAQCoolProp "Lithium bromide solution properties from CoolProp"
  extends ExternalMedia.Media.IncompressibleCoolPropMedium(
    mediumName="LiBr",
    substanceNames={"LiBr|calc_transport=1","dummyToMakeBasePropertiesWork"},
    ThermoStates=Modelica.Media.Interfaces.Choices.IndependentVariables.pTX);
end LiBrAQCoolProp;
