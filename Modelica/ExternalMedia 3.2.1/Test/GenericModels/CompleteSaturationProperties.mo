within ExternalMedia.Test.GenericModels;
model CompleteSaturationProperties
  "Compute all available saturation properties from a SaturationProperties record"
  replaceable package Medium =
      ExternalMedia.Test.GenericModels.DummyTwoPhaseMedium
    constrainedby Modelica.Media.Interfaces.PartialTwoPhaseMedium
    annotation(choicesAllMatching=true);
  // SaturationProperties record
  input Medium.SaturationProperties sat;
  // Saturation properties
  Medium.Temperature Ts=Medium.saturationTemperature_sat(sat);
  Medium.Density dl=Medium.bubbleDensity(sat);
  Medium.Density dv=Medium.dewDensity(sat);
  Medium.SpecificEnthalpy hl=Medium.bubbleEnthalpy(sat);
  Medium.SpecificEnthalpy hv=Medium.dewEnthalpy(sat);
  Real d_Ts_dp=Medium.saturationTemperature_derp_sat(sat);
  Real d_dl_dp=Medium.dBubbleDensity_dPressure(sat);
  Real d_dv_dp=Medium.dDewDensity_dPressure(sat);
  Real d_hl_dp=Medium.dBubbleEnthalpy_dPressure(sat);
  Real d_hv_dp=Medium.dDewEnthalpy_dPressure(sat);
end CompleteSaturationProperties;
