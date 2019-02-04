within ExternalMedia.Test.GenericModels;
partial model TestBasePropertiesDynamic
  "Test case using BaseProperties and dynamic equations"
  replaceable package Medium =
      ExternalMedia.Test.GenericModels.DummyTwoPhaseMedium
    constrainedby Modelica.Media.Interfaces.PartialTwoPhaseMedium
    annotation(choicesAllMatching=true);
  parameter SI.Volume V=1 "Storage Volume";
  parameter Real p_atm=101325 "Atmospheric pressure";
  parameter SI.Temperature Tstart=300;
  parameter SI.SpecificEnthalpy hstart=1e5;
  parameter SI.Pressure pstart=p_atm;
  parameter Real Kv0 "Valve flow coefficient";
  Medium.BaseProperties medium(
    preferredMediumStates=true,
    h(start=hstart),
    p(start=pstart));
  SI.Mass M;
  SI.Energy U;
  SI.MassFlowRate win(start=100);
  SI.MassFlowRate wout;
  SI.SpecificEnthalpy hin;
  SI.SpecificEnthalpy hout;
  SI.Power Q;
  Real Kv;
equation
  // Mass & energy balance equation
  M = medium.d*V;
  U = medium.u*M;
  der(M) = win - wout;
  der(U) = win*hin - wout*hout + Q;
  // Outlet valve equation
  wout = Kv*sqrt(medium.d*(medium.p - p_atm));
  hout = medium.h;
initial equation
  // Steady state equations
  der(medium.p) = 0;
  der(medium.h) = 0;
  annotation (experiment(StopTime=80, Tolerance=1e-007));
end TestBasePropertiesDynamic;
