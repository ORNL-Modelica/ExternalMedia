within ExternalMedia.Test.TestMedium.GenericModels;
model CompleteBubbleDewStates
  "Compute all available properties for dewpoint and bubble point states corresponding to a sat record"
  replaceable package Medium =
      Modelica.Media.Interfaces.PartialTwoPhaseMedium;
  // SaturationProperties record
  input Medium.SaturationProperties sat;
  CompleteThermodynamicState dewStateOnePhase(state=Medium.setDewState(
        sat, 1), redeclare package Medium = Medium);
  CompleteThermodynamicState dewStateTwoPhase(state=Medium.setDewState(
        sat, 2), redeclare package Medium = Medium);
  CompleteThermodynamicState bubbleStateOnePhase(state=
        Medium.setBubbleState(sat, 1), redeclare package Medium = Medium);
  CompleteThermodynamicState bubbleStateTwoPhase(state=
        Medium.setBubbleState(sat, 2), redeclare package Medium = Medium);
end CompleteBubbleDewStates;
