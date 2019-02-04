within ExternalMedia.Test.TestOMC.TestHelium;
package Helium "Helium model from NIST RefProp database"
  extends ExternalMedia.Media.BaseClasses.ExternalTwoPhaseMedium(
    mediumName="Helium",
    libraryName="FluidProp.RefProp",
    substanceNames={"He"},
    ThermoStates=Modelica.Media.Interfaces.Choices.IndependentVariables.ph,
    AbsolutePressure(
      min=500,
      max=44e5,
      nominal=1e5,
      start=1e5),
    Density(
      min=0.1,
      max=200,
      nominal=100,
      start=100),
    SpecificEnthalpy(
      min=-6000,
      max=1.7e6,
      nominal=1000,
      start=0),
    SpecificEntropy(
      min=-4000,
      max=30e3,
      nominal=1000,
      start=0),
    Temperature(
      min=2.17,
      max=310,
      nominal=10,
      start=5,
      displayUnit="K"));
end Helium;
