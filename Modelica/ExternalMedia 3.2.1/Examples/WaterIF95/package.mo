within ExternalMedia.Examples;
package WaterIF95 "RefProp water model"
  extends ExternalMedia.Media.FluidPropMedium(
    mediumName = "Water",
    libraryName = "FluidProp.RefProp",
    substanceNames = {"H2O"},
    ThermoStates = Modelica.Media.Interfaces.Choices.IndependentVariables.ph);
end WaterIF95;
