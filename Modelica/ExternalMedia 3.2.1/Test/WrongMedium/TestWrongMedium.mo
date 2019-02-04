within ExternalMedia.Test.WrongMedium;
model TestWrongMedium
  "Test the error reporting messages for unsupported external media"
  extends Modelica.Icons.Example;
  package Medium = Media.BaseClasses.ExternalTwoPhaseMedium;
  Medium.BaseProperties medium;
equation
  medium.p = 1e5;
  medium.h = 1e5;
end TestWrongMedium;
