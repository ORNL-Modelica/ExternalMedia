within ExternalMedia.UserGuide.Usage;
class CoolProp "CoolProp medium models"
  extends Modelica.Icons.Information;
  annotation (Documentation(info="<html>
<p>Pure (or pseudo-pure) medium models in CoolProp can be accessed by extending the <a href=\"modelica://ExternalMedia.Media.FluidPropMedium\">ExternalMedia.Media.CoolPropMedium</a> package.</p>
<p>Set substanceNames to a single-element string array containing the name of the specific medium, as specified by the CoolProp documentation. Set mediumName to a string that describes the medium (this only used for documentation purposes but has no effect in selecting the medium model).</p>
<p>See <a href=\"modelica://ExternalMedia.Examples\">ExternalMedia.Examples</a> for examples.</p>
</html>"));
end CoolProp;
