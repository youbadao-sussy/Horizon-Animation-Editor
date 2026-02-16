package flixel.horizon.animate;

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


extern abstract AnimationMain(Dynamic)
{
	public var AN(get, never):AnimationDataInfo; // animationData
	public var SD(get, never):Null< #if flash Array<SymbolJson> #else Vector<SymbolJson> #end>;
	public var MD(get, never):AnimationMetadata;

	inline function get_AN()
		return this.AN ?? this.ANIMATION;

	inline function get_SD()
		return this.SD?.S ?? this.SYMBOL_DICTIONARY?.Symbols;

	inline function get_MD()
		return this.MD ?? this.metadata;
}

extern abstract AnimationDataInfo(Dynamic) {
	public var N(get, never):String; // Export Assets Info Name (for example: "Boyfriend Assets")
	public var AD(get, never):Array<AnimationData>; // Export Assets Info Name

	inline function get_N()
		return this.N ?? this.name;

	inline function get_AD()
		return this.AD ?? this.animationsData;
}

extern abstract AnimationData(Dynamic) {
	public var N(get, never):String; // animation name (for example: "Idle", "singLeft", etc.)
	public var AP(get, never):String; // asset path
	public var SND(get, never):SoundData; // sound data
	public var AF(get, never):Array<AnimFrameData>; // animation frame

	inline function get_N()
		return this.N ?? this.name;

	inline function get_AP()
		return this.AP ?? this.assetPath;

	inline function get_SND()
		return this.SND ?? this.soundData;

	inline function get_AF()
		return this.AF ?? this.animationFrame;

}

extern typedef SoundData =
{
	N:String, // sound file name
	F:Int, // where to play sound in animation frame
	LP:String, // loop (for example: "true" or "false")
	RP:Int // repeat (for example: 0 for infinite loop, 1 for play once, etc.)
}

extern abstract AnimFrameData(Dynamic) {
	public var F(get, never):Int; // frame
	public var PA(get, never):Array<AnimPartData>; // parts animation data

	inline function get_F()
		return this.F ?? this.frame ?? 0;

	inline function get_PA()
		return this.PA ?? this.partsAnimation;
}

extern abstract AnimPartData(Dynamic) {
	public var N(get, never):String; // part name (for example: "head", "body", etc.)
	public var Z(get, never):Int; // z index
	public var O(get, never):Array<Float>; // offsets
	public var A(get, never):Float; // angle
	public var SA(get, never):Float; // scale additional
	public var DAO(get, never):Array<Float>; // deformVertex Additional Offset

	inline function get_N()
		return this.N ?? this.name;

	inline function get_Z()
		return this.Z ?? this.zIndex;

	inline function get_O()
		return this.O ?? this.offsets;

	inline function get_A()
		return this.A ?? this.angle;

	inline function get_SA()
		return this.SA ?? this.scaleAdditional;

	inline function get_DAO()
		return this.DAO ?? this.deformVrtxAddOffset;
}

extern abstract AnimationMetadata(Dynamic) {
	public var V(get, never):String; // version (now it's "1.0.0")
	public var FRT(get, never):Float; // framerate
	public var ANer(get, never):Array<String>; // animator name
	public var W(get, never):Int; // width
	public var H(get, never):Int; // height
	public var BGC(get, never):String; // background color

	inline function get_V()
		return this.V ?? this.version;

	inline function get_FRT()
		return this.FRT ?? this.framerate;

	inline function get_ANer()
		return this.ANer ?? this.animatorName ?? [];

	inline function get_W()
		return this.W ?? this.width ?? 0;

	inline function get_H()
		return this.H ?? this.height ?? 0;

	inline function get_BGC()
		return this.BGC ?? this.backgroundColor ?? "#FFFFFF";
}