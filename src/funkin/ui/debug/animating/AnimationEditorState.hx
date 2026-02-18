package funkin.ui.debug.animating;

import haxe.ui.Toolkit;
import haxe.ui.backend.flixel.UIState;
import haxe.ui.components.Button;
import haxe.ui.components.DropDown;
import haxe.ui.components.Label;
import haxe.ui.components.NumberStepper;
import haxe.ui.components.Slider;
import haxe.ui.containers.VBox;
import haxe.ui.containers.dialogs.CollapsibleDialog;
import haxe.ui.containers.dialogs.Dialogs;
import haxe.ui.containers.menus.Menu;
import haxe.ui.containers.menus.MenuBar;
import haxe.ui.containers.menus.MenuCheckBox;
import haxe.ui.containers.menus.MenuItem;
import haxe.ui.core.Screen;
import haxe.ui.events.DragEvent;
import haxe.ui.events.MouseEvent;
import haxe.ui.events.UIEvent;
import haxe.ui.focus.FocusManager;
import openfl.display.BitmapData;
import yaml.Parser;
import yaml.Renderer;
import yaml.Yaml;
import yaml.util.ObjectMap;

@:build(haxe.ui.ComponentBuilder.build("assets/exclude/data/ui/animation-editor/main-view.xml"))
class AnimationEditorState extends VBox {
	/*
    public function new() {
        super();
        button1.onClick = function(e) {
            button1.text = "Thanks!";
        }
    }
	 */
	public function new() {
		super();
	}

	@:bind(help1, MouseEvent.CLICK)
	private function onMyButton(e:MouseEvent) {
		messageYee();
	}
	static function messageYee() {
		#if sys
		var data = Yaml.read("assets/exclude/data/appData/main/about.yaml", Parser.options().useObjects());

		Dialogs.messageBox(data.app + '\nVersion: ' + data.version + '\nPlatform: ' + data.platform + '\n' + '\nBuilt by: ' + data.created_by
			+ '\nHaxeUI by: ' + data.haxeui + '\n\nNOTE: ' + data.description,
			'About...', 'info');
		#end
	}
}