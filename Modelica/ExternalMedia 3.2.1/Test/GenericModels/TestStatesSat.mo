within ExternalMedia.Test.GenericModels;
partial model TestStatesSat "Test case with state + sat records"
  replaceable package Medium =
      ExternalMedia.Test.GenericModels.DummyTwoPhaseMedium
    constrainedby Modelica.Media.Interfaces.PartialTwoPhaseMedium
    annotation(choicesAllMatching=true);
  Medium.AbsolutePressure p1;
  Medium.SpecificEnthalpy h1;
  Medium.AbsolutePressure p2;
  Medium.Temperature T2;
  Medium.ThermodynamicState state1;
  Medium.ThermodynamicState state2;
  Medium.SaturationProperties sat1;
  Medium.SaturationProperties sat2;
  Medium.Temperature Ts;
  Medium.AbsolutePressure ps;
  CompleteThermodynamicState completeState1(redeclare package Medium = Medium,
      state=state1);
  CompleteThermodynamicState completeState2(redeclare package Medium = Medium,
      state=state2);
  CompleteSaturationProperties completeSat1(redeclare package Medium = Medium,
      sat=sat1);
  CompleteSaturationProperties completeSat2(redeclare package Medium = Medium,
      sat=sat2);
  CompleteBubbleDewStates completeBubbleDewStates1(redeclare package Medium =
        Medium, sat=sat1);
  CompleteBubbleDewStates completeBubbleDewStates2(redeclare package Medium =
        Medium, sat=sat2);
equation
  state1 = Medium.setState_ph(p1, h1);
  state2 = Medium.setState_pT(p2, T2);
  sat1 = Medium.setSat_p(p1);
  sat2 = Medium.setSat_T(T2);
  Ts = Medium.saturationTemperature(p1);
  ps = Medium.saturationPressure(T2);
end TestStatesSat;
