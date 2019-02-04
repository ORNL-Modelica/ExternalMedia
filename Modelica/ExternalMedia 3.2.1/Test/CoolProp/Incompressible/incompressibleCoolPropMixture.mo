within ExternalMedia.Test.CoolProp.Incompressible;
model incompressibleCoolPropMixture
                                   extends Modelica.Icons.Example;

package LiBr_CP "Lithium bromide solution properties from CoolProp"
  extends ExternalMedia.Media.IncompressibleCoolPropMedium(
  mediumName="LiBr",
  substanceNames={"LiBr|calc_transport=1|debug=1000","dummyToMakeBasePropertiesWork"},
  ThermoStates=Modelica.Media.Interfaces.PartialMedium.Choices.IndependentVariables.pTX);
end LiBr_CP;

replaceable package Fluid = LiBr_CP constrainedby
    Modelica.Media.Interfaces.PartialMedium "Medium model";
  Fluid.ThermodynamicState state_var;
  Fluid.ThermodynamicState state_con;
  Fluid.Temperature T;
  Fluid.AbsolutePressure p;
  Fluid.MassFraction[1] X_var;
  Fluid.MassFraction[1] X_con;
  Fluid.BaseProperties varProps;

equation
  p         = 10E5;
  T         = 273.15 + 15.0 + time * 50.0;
  X_var[1]  =   0.00 +  0.1 + time *  0.5;
  X_con[1]  =   0.00 +  0.1;
  state_var = Fluid.setState_pTX(p,T,X_var);
  state_con = Fluid.setState_pTX(p,T,X_con);
  // And now we do some testing with the BaseProperties
  varProps.T = T;
  varProps.p = p;
  varProps.Xi = X_var;
end incompressibleCoolPropMixture;
