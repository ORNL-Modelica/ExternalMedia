within ExternalMedia.Examples;
package WaterTPSI "TPSI Water model"
  extends ExternalMedia.Media.FluidPropMedium(
    mediumName = "Water",
    libraryName = "FluidProp.TPSI",
    substanceNames = {"H2O"},
    ThermoStates = Modelica.Media.Interfaces.Choices.IndependentVariables.ph);
end WaterTPSI;
