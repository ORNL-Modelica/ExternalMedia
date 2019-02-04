within ExternalMedia.Test.TestMedium;
model TestStatesSat "Test case using TestMedium with state + sat records"
  extends Modelica.Icons.Example;
  replaceable package Medium = Media.TestMedium;
  Medium.BaseProperties baseProperties1;
  Medium.BaseProperties baseProperties2;
  Medium.ThermodynamicState state1;
  Medium.ThermodynamicState state2;
  Medium.SaturationProperties sat1;
  Medium.SaturationProperties sat2;
  Medium.Temperature Ts;
  Medium.AbsolutePressure ps;
  GenericModels.CompleteThermodynamicState completeState1(redeclare package
      Medium = Medium, state=state1);
  GenericModels.CompleteThermodynamicState completeState2(redeclare package
      Medium = Medium, state=state2);
  GenericModels.CompleteSaturationProperties completeSat1(redeclare package
      Medium = Medium, sat=sat1);
  GenericModels.CompleteSaturationProperties completeSat2(redeclare package
      Medium = Medium, sat=sat2);
  GenericModels.CompleteBubbleDewStates completeBubbleDewStates1(redeclare
      package Medium = Medium, sat=sat1);
  GenericModels.CompleteBubbleDewStates completeBubbleDewStates2(redeclare
      package Medium = Medium, sat=sat1);
equation
  baseProperties1.p = 1e5 + 1e5*time;
  baseProperties1.h = 1e5;
  baseProperties2.p = 1e5;
  baseProperties2.h = 1e5 + 2e5*time;
  state1 = Medium.setState_ph(1e5 + 1e5*time, 1e5);
  state2 = Medium.setState_pT(1e5, 300 + 50*time);
  sat1 = Medium.setSat_p(1e5 + 1e5*time);
  sat2 = Medium.setSat_T(300 + 50*time);
  Ts = Medium.saturationTemperature(1e5 + 1e5*time);
  ps = Medium.saturationPressure(300 + 50*time);
end TestStatesSat;
