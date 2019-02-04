within ExternalMedia.Test.CoolProp;
model CheckOptions
  extends Modelica.Icons.Example;
  String test;
algorithm
  test := ExternalMedia.Common.CheckCoolPropOptions("LiBr|enable_TTSE");
  test := ExternalMedia.Common.CheckCoolPropOptions("LiBr|enable_TTSE=0");
  test := ExternalMedia.Common.CheckCoolPropOptions("LiBr|enable_TTSE=1");
  //
  test := ExternalMedia.Common.CheckCoolPropOptions("LiBr|enable_BICUBIC");
  test := ExternalMedia.Common.CheckCoolPropOptions("LiBr|enable_BICUBIC=0");
  test := ExternalMedia.Common.CheckCoolPropOptions("LiBr|enable_BICUBIC=1");
  //
  test := ExternalMedia.Common.CheckCoolPropOptions("LiBr|enable_EXTTP");
  test := ExternalMedia.Common.CheckCoolPropOptions("LiBr|enable_EXTTP=0");
  test := ExternalMedia.Common.CheckCoolPropOptions("LiBr|enable_EXTTP=1");
  //
  test := ExternalMedia.Common.CheckCoolPropOptions("LiBr|twophase_derivsmoothing_xend");
  test := ExternalMedia.Common.CheckCoolPropOptions("LiBr|twophase_derivsmoothing_xend=0.0");
  test := ExternalMedia.Common.CheckCoolPropOptions("LiBr|twophase_derivsmoothing_xend=0.1");
  //
  test := ExternalMedia.Common.CheckCoolPropOptions("LiBr|rho_smoothing_xend");
  test := ExternalMedia.Common.CheckCoolPropOptions("LiBr|rho_smoothing_xend=0.0");
  test := ExternalMedia.Common.CheckCoolPropOptions("LiBr|rho_smoothing_xend=0.1");
  //
  test := ExternalMedia.Common.CheckCoolPropOptions("LiBr|debug");
  test := ExternalMedia.Common.CheckCoolPropOptions("LiBr|debug=0");
  test := ExternalMedia.Common.CheckCoolPropOptions("LiBr|debug=100");
  //
  test := ExternalMedia.Common.CheckCoolPropOptions("LiBr|enable_TTSE=1|debug=0|enable_EXTTP",debug=true);
  test := ExternalMedia.Common.CheckCoolPropOptions("LiBr|enable_TTSE=1|debug=0|enableEXTTP=1");
end CheckOptions;
