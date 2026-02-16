package funkin.graphics.sprites.load.horizonAtlas;

extern typedef HrzAtlasMapDataMain = {
	atlas:{
		SPRITES:Array<SpriteMapData>
	}, // sprites
	meta:ExportMeta // export metadata
}

extern typedef ExportMeta = {
	version:String;
	image:String;
	size:{w:Int, h:Int};
	generatedBy:String;
}

extern typedef SpriteMapData = {
	N:String, // partsName
	S:{
		X:Float, Y:Float, W:Float, H:Float, R:Bool // x, y, width, height, rotated
	},
	V:{
		A:AxisVertexData, D:DeformVertexData // axis, deform
	}
}

extern typedef AxisVertexData = {
	X:Float,
	Y:Float
}

extern typedef DeformVertexData = {
	X:Float,
	Y:Float
}