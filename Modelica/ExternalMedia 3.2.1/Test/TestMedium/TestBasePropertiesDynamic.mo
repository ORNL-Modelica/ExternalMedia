within ExternalMedia.Test.TestMedium;
model TestBasePropertiesDynamic
  "Test case using TestMedium and dynamic equations"
  extends Modelica.Icons.Example;
  replaceable package Medium = Media.TestMedium;
  parameter SI.Volume V=1 "Storage Volume";
  parameter Real p_atm=101325 "Atmospheric pressure";
  parameter SI.Temperature Tstart=300;
  parameter Real Kv0=1.00801e-2 "Valve flow coefficient";
  Medium.BaseProperties medium(preferredMediumStates=true);
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
  // Inlet pump equations
  medium.p - p_atm = 2e5 - (1e5/100^2)*win^2;
  hin = 1e5;
  // Outlet valve equation
  wout = Kv*sqrt(medium.d*(medium.p - p_atm));
  hout = medium.h;
  // Input variables
  Kv = if time < 50 then Kv0 else Kv0*1.1;
  Q = if time < 1 then 0 else 1e7;
initial equation
  // Initial conditions
  // Fixed initial states
  // medium.p = 2e5;
  // medium.h = 1e5;
  // Steady state equations
  der(medium.p) = 0;
  der(medium.h) = 0;
  annotation (experiment(StopTime=80, Tolerance=1e-007),
      experimentSetupOutput(equdistant=false));
end TestBasePropertiesDynamic;
