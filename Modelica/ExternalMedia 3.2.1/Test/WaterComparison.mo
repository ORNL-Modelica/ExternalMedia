within ExternalMedia.Test;
model WaterComparison "Compares different implementations of water"
  extends Modelica.Icons.Example;

  GenericModels.TestRunnerTwoPhase      testRunnerTwoPhaseWater1(
    hstart=4e5,
    redeclare package TwoPhaseMedium = ExternalMedia.Examples.WaterCoolProp,
    p_start=100000)
    annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
end WaterComparison;
