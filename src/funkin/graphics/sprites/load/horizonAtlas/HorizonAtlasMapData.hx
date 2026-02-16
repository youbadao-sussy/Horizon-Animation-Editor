package funkin.graphics.sprites.load.horizonAtlas;

typedef MapDataMain =
{
  @:alias("TYPE") var type:String;
  @:alias("SPRITE") var sprites:Array<SpriteMapData>;
	@:alias("META") var meta:ExportMeta;
}

typedef SpriteMapData =
{
  @:alias("N") var name:String;
  @:alias("S") var sprite:SpriteData;
  @:alias("V") var vertex:VertexData;
}

typedef SpriteData =
{
  @:alias("X") var x:Float;
  @:alias("Y") var y:Float;
  @:alias("W") var width:Float;
  @:alias("H") var height:Float;
  @:alias("R") @:default(false) var rotated:Bool;
}

typedef VertexData =
{
  @:alias("A") var axis:Array<Float>;
  @:alias("D") var deform:Array<Float>;
}

typedef ExportMeta =
{
  var version:String;
  var image:String;
  var size:Array<Int>;
  var generatedBy:String;
}
