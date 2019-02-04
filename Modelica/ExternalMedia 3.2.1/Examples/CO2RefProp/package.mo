within ExternalMedia.Examples;
package CO2RefProp "RefProp model of CO2"
  extends ExternalMedia.Media.FluidPropMedium(
    mediumName = "Carbon Dioxide",
    libraryName = "FluidProp.RefProp",
    substanceNames = {"CO2"},
    ThermoStates = Modelica.Media.Interfaces.Choices.IndependentVariables.ph,
    SpecificEnthalpy(start = 2e5));
end CO2RefProp;
