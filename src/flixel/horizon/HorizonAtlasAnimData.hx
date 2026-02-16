package funkin.graphics.sprites.load.horizonAtlas;

typedef AnimDataMain =
{
  var anim:Array<AnimationMetadata>;
	var animator:String;
  var generatedBy:String;
}

typedef AnimationMetadata =
{
  @:alias("N") var assetName:String;
	@:alias("AN") var animations:Array<AnimInfoData>;
}

typedef AnimInfoData =
{
	@:alias("N") var animName:String;
	@:alias("AP") var assetPath:String;
  @:alias("F") var frame:Int;
	@:alias("PA") var partsAnimation:Array<AnimPartsData>;
}

typedef AnimPartsData =
{
  @:alias("N") var partsName:String;
  @:alias("Z") var zIndex:Int;
  @:alias("O") var offsets:Array<Float>;
  @:alias("A") var angle:Float;
  @:alias("SA") var scaleAdditional:Float;
  @:alias("DAO") var deformVrtxAddOffset:Array<Float>;
}
