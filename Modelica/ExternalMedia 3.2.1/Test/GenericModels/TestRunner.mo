within ExternalMedia.Test.GenericModels;
partial model TestRunner
  "A collection of models to test the states and base properties"
  extends Modelica.Icons.Example;

  replaceable package Medium = Modelica.Media.Water.StandardWater
    constrainedby Modelica.Media.Interfaces.PartialTwoPhaseMedium
    annotation(choicesAllMatching=true);

  Medium.AbsolutePressure p_in;
  Medium.SpecificEnthalpy h_in;
  Medium.Temperature T_in;
  Medium.SaturationProperties sat_in;
  parameter Medium.SpecificEnthalpy hstart = 2e5
    "Start value for specific enthalpy";

  model TestStates_Impl
    extends ExternalMedia.Test.GenericModels.TestStates;
    input Medium.AbsolutePressure _p1;
    input Medium.SpecificEnthalpy _h1;
    input Medium.AbsolutePressure _p2;
    input Medium.Temperature _T2;
  equation
    p1 = _p1;
    h1 = _h1;
    p2 = _p2;
    T2 = _T2;
  end TestStates_Impl;

  TestStates_Impl testStates(
    redeclare package Medium = Medium,
    _p1=p_in,
    _h1=h_in,
    _p2=p_in*1.15,
    _T2=T_in) annotation (Placement(transformation(extent={{-80,60},{-60,80}})));

  model TestStatesSat_Impl
    extends ExternalMedia.Test.GenericModels.TestStatesSat;
    input Medium.AbsolutePressure _p1;
    input Medium.SpecificEnthalpy _h1;
    input Medium.AbsolutePressure _p2;
    input Medium.Temperature _T2;
  equation
    p1 = _p1;
    h1 = _h1;
    p2 = _p2;
    T2 = _T2;
  end TestStatesSat_Impl;

  TestStatesSat_Impl testStatesSat(
    redeclare package Medium = Medium,
    _p1=p_in,
    _h1=h_in,
    _p2=p_in*1.15,
    _T2=T_in) annotation (Placement(transformation(extent={{-40,60},{-20,80}})));

  model TestBasePropertiesExplicit_Impl
    extends ExternalMedia.Test.GenericModels.TestBasePropertiesExplicit;
    input Medium.AbsolutePressure _p1;
    input Medium.SpecificEnthalpy _h1;
    input Medium.AbsolutePressure _p2;
    input Medium.SpecificEnthalpy _h2;
  equation
    p1 = _p1;
    h1 = _h1;
    p2 = _p2;
    h2 = _h2;
  end TestBasePropertiesExplicit_Impl;

  TestBasePropertiesExplicit_Impl testBasePropertiesExplicit(
    redeclare package Medium = Medium,
    _p1=p_in,
    _h1=h_in,
    _p2=p_in*1.15,
    _h2=h_in) annotation (Placement(transformation(extent={{-40,20},{-20,40}})));

  model TestBasePropertiesImplicit_Impl
    extends ExternalMedia.Test.GenericModels.TestBasePropertiesImplicit;
    input Medium.AbsolutePressure _p1;
    input Medium.Temperature _T1;
    input Medium.AbsolutePressure _p2;
    input Medium.Temperature _T2;
  equation
    p1 = _p1;
    T1 = _T1;
    p2 = _p2;
    T2 = _T2;
  end TestBasePropertiesImplicit_Impl;

  TestBasePropertiesImplicit_Impl testBasePropertiesImplicit(
    redeclare package Medium = Medium,
    _p1=p_in,
    _T1=T_in,
    _p2=p_in*1.15,
    _T2=T_in,
    hstart=hstart)
              annotation (Placement(transformation(extent={{-80,20},{-60,40}})));

  model TestBasePropertiesDynamic_Impl
    extends ExternalMedia.Test.GenericModels.TestBasePropertiesDynamic;
    input Medium.SpecificEnthalpy _h1;
  equation
    // Inlet equations
    win = 1;
    hin = _h1;
    // Input variables
    Kv = if time < 50 then Kv0 else Kv0*1.1;
    Q = if time < 1 then 0 else 1e4;
  end TestBasePropertiesDynamic_Impl;

  TestBasePropertiesDynamic_Impl testBasePropertiesDynamic(Tstart=300,
    hstart=4e5,
    pstart=1e6,
    Kv0=1.00801e-4,
    V=0.1,
    redeclare package Medium = Medium,_h1=h_in)
    annotation (Placement(transformation(extent={{0,20},{20,40}})));
  annotation (experiment(StopTime=80, Tolerance=1e-007));
end TestRunner;
