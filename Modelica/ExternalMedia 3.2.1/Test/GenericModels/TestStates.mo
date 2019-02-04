within ExternalMedia.Test.GenericModels;
partial model TestStates "Test case with state"
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
  CompleteThermodynamicState completeState1(redeclare package Medium = Medium,
      state=state1);
  CompleteThermodynamicState completeState2(redeclare package Medium = Medium,
      state=state2);
equation
  state1 = Medium.setState_ph(p1, h1);
  state2 = Medium.setState_pT(p2, T2);
end TestStates;
