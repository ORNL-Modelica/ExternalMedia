within ExternalMedia.Test.CoolProp;
model Pentane_hs_state
package wf
  extends ExternalMedia.Media.CoolPropMedium(
    mediumName = "Pentane",
    substanceNames = {"n-Pentane"},
    inputChoice=ExternalMedia.Common.InputChoice.hs);
end wf;
  wf.ThermodynamicState fluid "Properties of the two-phase fluid";
  Modelica.Units.SI.SpecificEnthalpy h;
  Modelica.Units.SI.Pressure p;
  Modelica.Units.SI.SpecificEntropy s;
  Modelica.Units.SI.DerDensityByEnthalpy drdh
    "Derivative of average density by enthalpy";
  Modelica.Units.SI.DerDensityByPressure drdp
    "Derivative of average density by pressure";
equation
  //p = 1E5;
  h = 0 + time*1E6;
  s = 600 + time*2000;
  fluid = wf.setState_hs(h,s);
  fluid.p = p;
  drdp = wf.density_derp_h(fluid);
  drdh = wf.density_derh_p(fluid);
end Pentane_hs_state;
