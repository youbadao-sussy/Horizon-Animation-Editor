@echo off
color 0a
cd ..
@echo on
echo Installing dependencies...
echo This might take a few moments depending on your internet speed.
haxelib install lime 8.3.0
haxelib install openfl 9.5.0
haxelib install flixel 6.1.2
haxelib install flixel-addons 4.0.1
haxelib install flixel-tools 1.5.1
haxelib install haxeui-core 1.7.0
haxelib git haxeui-flixel https://github.com/youbadao-sussy/haxeui-flixel/tree/master
haxelib install tjson 1.4.0
haxelib install hxdiscord_rpc 1.3.0
haxelib install thx.core 0.44.0
haxelib install thx.semver 0.2.2
haxelib install tink_core 2.1.1
haxelib set lime 8.3.0
haxelib set openfl 9.5.0
echo Finished!
pause
