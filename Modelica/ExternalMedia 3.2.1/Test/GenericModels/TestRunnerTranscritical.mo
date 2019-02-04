within ExternalMedia.Test.GenericModels;
model TestRunnerTranscritical
  "A collection of models to test the transcritical states"
  extends Modelica.Icons.Example;
  extends ExternalMedia.Test.GenericModels.TestRunner(        redeclare package
              Medium =
        TwoPhaseMedium);

  replaceable package TwoPhaseMedium = Modelica.Media.Water.StandardWater
    constrainedby Modelica.Media.Interfaces.PartialTwoPhaseMedium
    annotation(choicesAllMatching=true);

  parameter Medium.AbsolutePressure p_start = 1e5;
algorithm
  assert(Medium.fluidConstants[1].criticalPressure>p_start, "You have to start below the critical pressure.");
equation
  p_in = p_start+1.5*(Medium.fluidConstants[1].criticalPressure-p_start)*time;
  sat_in = Medium.setSat_p(p=p_in);
  h_in = Medium.bubbleEnthalpy(sat_in);
  T_in = Medium.saturationTemperature_sat(sat_in);
end TestRunnerTranscritical;
