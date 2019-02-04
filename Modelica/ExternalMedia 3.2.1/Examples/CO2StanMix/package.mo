within ExternalMedia.Examples;
package CO2StanMix "StanMix model of CO2"
  extends ExternalMedia.Media.FluidPropMedium(
    mediumName = "Carbon Dioxide",
    libraryName = "FluidProp.StanMix",
    substanceNames = {"CO2"},
    ThermoStates = Modelica.Media.Interfaces.Choices.IndependentVariables.ph);
end CO2StanMix;
