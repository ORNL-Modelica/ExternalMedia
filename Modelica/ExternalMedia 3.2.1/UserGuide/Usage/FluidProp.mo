within ExternalMedia.UserGuide.Usage;
class FluidProp "FluidProp medium models"
  extends Modelica.Icons.Information;
  annotation (Documentation(info="<html>
<p>Pure (or pseudo-pure) medium models from all the libraries in FluidProp can be accessed by extending the <a href=\"modelica://ExternalMedia.Media.FluidPropMedium\">ExternalMedia.Media.FluidPropMedium</a> package. You need to download and install FluidProp on your computer for these models to work: ExternalMedia accesses them through a COM interface.</p>
<p>Set libraryName to &QUOT;FluidProp.RefProp&QUOT;, &QUOT;FluidProp.StanMix&QUOT;, &QUOT;FluidProp.TPSI&QUOT;, &QUOT;FluidProp.IF97&QUOT;, or &QUOT;FluidProp.GasMix&QUOT; (only single-component), depending on the specific library you need to use. Set substanceNames to a single-element string array containing the name of the specific medium, as specified by the FluidProp documentation. Set mediumName to a string that describes the medium (this only used for documentation purposes but has no effect in selecting the medium model).</p>
<p>See <a href=\"modelica://ExternalMedia.Examples\">ExternalMedia.Examples</a> for examples.</p>
<p>Please note that the medium models IF97 and GasMix are already available natively in Modelica.Media as <a href=\"modelica://Modelica.Media.Water.StandardWater\">Water.StandardWater</a> and <a href=\"modelica://Modelica.Media.IdealGases.MixtureGases\">IdealGases.MixtureGases</a>, and are included here for comparison purposes. It is recommended to use the Modelica.Media models instead, since they are much faster to compute. </p>
</html>"));
end FluidProp;
