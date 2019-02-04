within ExternalMedia.Test.GenericModels;
model CompleteBubbleDewStates
  "Compute all available properties for dewpoint and bubble point states corresponding to a sat record"
  replaceable package Medium =
      ExternalMedia.Test.GenericModels.DummyTwoPhaseMedium
    constrainedby Modelica.Media.Interfaces.PartialTwoPhaseMedium
    annotation(choicesAllMatching=true);
  // SaturationProperties record
  input Medium.SaturationProperties sat;
  // and the rest based on sat
  CompleteThermodynamicState dewStateOnePhase(state=Medium.setDewState(sat, 1),
      redeclare package Medium = Medium);
  CompleteThermodynamicState dewStateTwoPhase(state=Medium.setDewState(sat, 2),
      redeclare package Medium = Medium);
  CompleteThermodynamicState bubbleStateOnePhase(state=Medium.setBubbleState(
        sat, 1), redeclare package Medium = Medium);
  CompleteThermodynamicState bubbleStateTwoPhase(state=Medium.setBubbleState(
        sat, 2), redeclare package Medium = Medium);
end CompleteBubbleDewStates;
