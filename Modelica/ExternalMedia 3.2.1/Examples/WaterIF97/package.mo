within ExternalMedia.Examples;
package WaterIF97 "IF97 Water model"
  extends ExternalMedia.Media.FluidPropMedium(
    mediumName = "Water",
    libraryName = "FluidProp.IF97",
    substanceNames = {"H2O"},
    ThermoStates = Modelica.Media.Interfaces.Choices.IndependentVariables.ph);
end WaterIF97;
