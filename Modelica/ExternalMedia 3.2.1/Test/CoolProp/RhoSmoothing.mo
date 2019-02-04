within ExternalMedia.Test.CoolProp;
model RhoSmoothing
  extends Modelica.Icons.Example;
package fluid_std
  extends ExternalMedia.Media.CoolPropMedium(
    mediumName = "Pentane",
    substanceNames = {"n-Pentane|rho_smoothing_xend=0.0"},
    inputChoice=ExternalMedia.Common.InputChoice.ph);
end fluid_std;

package fluid_spl
  extends ExternalMedia.Media.CoolPropMedium(
    mediumName = "Pentane",
    substanceNames = {"n-Pentane|rho_smoothing_xend=0.2"},
    inputChoice=ExternalMedia.Common.InputChoice.ph);
end fluid_spl;

fluid_std.ThermodynamicState state_std "Properties of the two-phase fluid";
fluid_spl.ThermodynamicState state_spl "Properties of the two-phase fluid";

Modelica.SIunits.AbsolutePressure p;
Modelica.SIunits.SpecificEnthalpy h;

fluid_std.SaturationProperties sat_std;

Modelica.SIunits.SpecificEnthalpy h_start;
Modelica.SIunits.SpecificEnthalpy h_end;
Modelica.SIunits.SpecificEnthalpy h_delta;

Modelica.SIunits.Time t = 1;

equation
  p = 10E5;
  sat_std = fluid_std.setSat_p(p);
  h_start = fluid_std.bubbleEnthalpy(sat_std);
  h_end = fluid_std.dewEnthalpy(sat_std);
  h_delta = 3e3;
  h = (h_start - h_delta) + (h_end-h_start+2*h_delta)*time/t;
  state_std = fluid_std.setState_ph(p,h);
  state_spl = fluid_spl.setState_ph(p,h);
end RhoSmoothing;
