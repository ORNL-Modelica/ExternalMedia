within ExternalMedia.Examples;
package CO2CoolProp "CoolProp model of CO2"
  extends ExternalMedia.Media.CoolPropMedium(
    mediumName = "CarbonDioxide",
    substanceNames = {"CO2"},
    ThermoStates = Modelica.Media.Interfaces.Choices.IndependentVariables.ph,
    SpecificEnthalpy(start=2e5));
end CO2CoolProp;
