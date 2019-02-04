within ExternalMedia.Test.TestMedium.GenericModels;
model CompleteFluidConstants
  "Compute all available medium fluid constants"
  replaceable package Medium =
      Modelica.Media.Interfaces.PartialTwoPhaseMedium;
  // Fluid constants
  Medium.Temperature Tc=Medium.fluidConstants[1].criticalTemperature;
  Medium.AbsolutePressure pc=Medium.fluidConstants[1].criticalPressure;
  Medium.MolarVolume vc=Medium.fluidConstants[1].criticalMolarVolume;
  Medium.MolarMass MM=Medium.fluidConstants[1].molarMass;
end CompleteFluidConstants;
