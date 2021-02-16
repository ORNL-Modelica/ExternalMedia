within ExternalMedia.Test.CoolProp;
model Pentane_hs
package wf
  extends ExternalMedia.Media.CoolPropMedium(
    mediumName = "Pentane",
    substanceNames = {"n-Pentane"},
    inputChoice=ExternalMedia.Common.InputChoice.hs);
end wf;
  wf.BaseProperties fluid "Properties of the two-phase fluid";
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
  s = 1500;  //600 + time*2000;
  fluid.p = p;
  fluid.s = s;
  fluid.h = h;
  drdp = wf.density_derp_h(fluid.state);
  drdh = wf.density_derh_p(fluid.state);
end Pentane_hs;
