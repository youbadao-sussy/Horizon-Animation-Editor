#!/bin/sh
# SETUP FOR MAC AND LINUX SYSTEMS!!!
# REMINDER THAT YOU NEED HAXE INSTALLED PRIOR TO USING THIS
# https://haxe.org/download
cd ..
echo Makking the main haxelib and setuping folder in same time..
mkdir ~/haxelib && haxelib setup ~/haxelib
echo Installing dependencies...
echo This might take a few moments depending on your internet speed.
haxelib install flixel 6.1.2
haxelib install flixel-addons 4.0.1
haxelib install flixel-tools 1.5.1
haxelib git haxeui-core https://github.com/youbadao-sussy/haxeui-core
haxelib git haxeui-flixel https://github.com/youbadao-sussy/haxeui-flixel
haxelib install tjson 1.4.0
haxelib install hxdiscord_rpc 1.2.4
haxelib install thx.core 0.44.0
haxelib install thx.semver 0.2.2
haxelib install tink_core 2.1.1
haxelib install lime 8.1.2
haxelib install openfl 9.3.3
echo Finished!