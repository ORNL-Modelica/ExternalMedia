within ExternalMedia.Test.GenericModels;
model CompleteFluidConstants "Compute all available medium fluid constants"
  replaceable package Medium =
      ExternalMedia.Test.GenericModels.DummyTwoPhaseMedium
    constrainedby Modelica.Media.Interfaces.PartialTwoPhaseMedium
    annotation(choicesAllMatching=true);
  // Fluid constants
  Medium.Temperature Tc=Medium.fluidConstants[1].criticalTemperature;
  Medium.AbsolutePressure pc=Medium.fluidConstants[1].criticalPressure;
  Medium.MolarVolume vc=Medium.fluidConstants[1].criticalMolarVolume;
  Medium.MolarMass MM=Medium.fluidConstants[1].molarMass;
end CompleteFluidConstants;
