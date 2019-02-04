within ExternalMedia.Examples;
package WaterCoolProp "CoolProp model of water"
  extends ExternalMedia.Media.CoolPropMedium(
    mediumName = "Water",
    substanceNames = {"water"},
    ThermoStates = Modelica.Media.Interfaces.Choices.IndependentVariables.ph,
    AbsolutePressure(start=10e5),
    SpecificEnthalpy(start=2e5));
end WaterCoolProp;
