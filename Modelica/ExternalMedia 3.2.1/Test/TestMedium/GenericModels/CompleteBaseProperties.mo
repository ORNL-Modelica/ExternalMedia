within ExternalMedia.Test.TestMedium.GenericModels;
model CompleteBaseProperties
  "Compute all available two-phase medium properties from a BaseProperties model"
  replaceable package Medium =
      Modelica.Media.Interfaces.PartialTwoPhaseMedium;
  // BaseProperties object
  Medium.BaseProperties baseProperties;
  // All the complete properties
  CompleteThermodynamicState completeState(redeclare package Medium =
        Medium, state=baseProperties.state);
  CompleteSaturationProperties completeSat(redeclare package Medium =
        Medium, sat=baseProperties.sat);
  CompleteFluidConstants completeConstants(redeclare package Medium =
        Medium);
  CompleteBubbleDewStates completeBubbleDewStates(redeclare package
      Medium = Medium, sat=baseProperties.sat);
end CompleteBaseProperties;
