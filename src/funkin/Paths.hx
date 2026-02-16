package funkin;

import lime.utils.Assets;
import openfl.display.BitmapData;
import openfl.system.System;
import openfl.utils.AssetType;
import openfl.utils.Assets as OpenFlAssets;

class Paths
{
  static var currentLevel:Null<String> = null;

  static public function setCurrentLevel(name:String)
    currentLevel = name.toLowerCase();

  public static function getPath(file:String, ?type:AssetType = TEXT, ?library:String):String
  {
    if (library != null) return getFolderPath(file, library);

    if (currentLevel != null && currentLevel != 'shared')
    {
      var levelPath = getFolderPath(file, currentLevel);
      if (OpenFlAssets.exists(levelPath, type)) return levelPath;
    }
    return getSharedPath(file);
  }
  
  static inline function getPreloadPath(file:String):String
  {
    return 'assets/$file';
  }

  inline static public function getFolderPath(file:String, folder = "shared")
    return 'assets/$folder/$file';

  inline public static function getSharedPath(file:String = '')
    return 'assets/shared/$file';

  public static function xml(key:String, ?library:String):String
  {
    return getPath('data/$key.xml', TEXT, library);
  }

  public static function ui(key:String, ?library:String):String
  {
    return xml('ui/$key', library);
  }
}