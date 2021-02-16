within ExternalMedia.Test.CoolProp.Incompressible;
model incompressibleCoolPropMedium
                                   extends Modelica.Icons.Example;

package DowQ_CP "DowthermQ properties from CoolProp"
    extends ExternalMedia.Media.IncompressibleCoolPropMedium(
      mediumName="DowQ",
      substanceNames={"DowQ|calc_transport=1|debug=1000"},
      ThermoStates=Modelica.Media.Interfaces.Choices.IndependentVariables.pT);
end DowQ_CP;

//replaceable package Fluid = ExternalMedia.Examples.WaterCoolProp (
//  ThermoStates = Modelica.Media.Interfaces.Choices.IndependentVariables.pTX) constrainedby
//    Modelica.Media.Interfaces.PartialMedium "Medium model";

replaceable package Fluid =  DowQ_CP constrainedby
    Modelica.Media.Interfaces.PartialMedium "Medium model";
  Fluid.ThermodynamicState state;
  Fluid.Temperature T;
  Fluid.AbsolutePressure p;
  Fluid.BaseProperties props;

equation
  p     = 10E5;
  T     = 273.15 + 15.0 + time * 50.0;
  state = Fluid.setState_pT(p,T);
  // And now we do some testing with the BaseProperties
  props.T = T;
  props.p = p;
end incompressibleCoolPropMedium;
