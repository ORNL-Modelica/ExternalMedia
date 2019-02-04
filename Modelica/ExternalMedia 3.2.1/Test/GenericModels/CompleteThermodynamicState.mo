within ExternalMedia.Test.GenericModels;
model CompleteThermodynamicState
  "Compute all available two-phase medium properties from a ThermodynamicState model"
  replaceable package Medium =
      ExternalMedia.Test.GenericModels.DummyTwoPhaseMedium
    constrainedby Modelica.Media.Interfaces.PartialTwoPhaseMedium
    annotation(choicesAllMatching=true);
  // ThermodynamicState record
  input Medium.ThermodynamicState state;
  // Medium properties
  Medium.AbsolutePressure p=Medium.pressure(state);
  Medium.SpecificEnthalpy h=Medium.specificEnthalpy(state);
  Medium.Temperature T=Medium.temperature(state);
  Medium.Density d=Medium.density(state);
  Medium.SpecificEntropy s=Medium.specificEntropy(state);
  Medium.SpecificHeatCapacity cp=Medium.specificHeatCapacityCp(state);
  Medium.SpecificHeatCapacity cv=Medium.specificHeatCapacityCv(state);
  Medium.IsobaricExpansionCoefficient beta=Medium.isobaricExpansionCoefficient(state);
  SI.IsothermalCompressibility kappa=Medium.isothermalCompressibility(state);
  Medium.DerDensityByPressure d_d_dp_h=Medium.density_derp_h(state);
  Medium.DerDensityByEnthalpy d_d_dh_p=Medium.density_derh_p(state);
  Medium.MolarMass MM=Medium.molarMass(state);
end CompleteThermodynamicState;
