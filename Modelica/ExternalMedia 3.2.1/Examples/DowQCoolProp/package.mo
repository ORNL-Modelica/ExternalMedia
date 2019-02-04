within ExternalMedia.Examples;
package DowQCoolProp "DowthermQ properties from CoolProp"
  extends ExternalMedia.Media.IncompressibleCoolPropMedium(
    mediumName="DowQ",
    substanceNames={"DowQ|calc_transport=1"},
    ThermoStates=Modelica.Media.Interfaces.Choices.IndependentVariables.pT);
end DowQCoolProp;
