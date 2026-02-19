package funkin.ui.debug.animating;

import funkin.backend.save.FunkinClient;
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
		messageYee("about");
	}
	static function messageYee(sysTxt:String) {
		#if sys
		var lang = Yaml.read("assets/exclude/data/appData/language/" + FunkinClient.language + ".yaml", Parser.options().useObjects());

		if (sysTxt == "about") {
			var about = Yaml.read("assets/exclude/data/appData/main/about.yaml", Parser.options().useObjects());

			Dialogs.messageBox(about.app + '\nVersion: ' + about.version + '\nPlatform: ' + about.platform + '\n' + '\nBuilt by: ' + about.created_by
				+ '\nHaxeUI by: ' + about.haxeui + '\n\nNOTE: ' + lang.about_desc,
			'About...', 'info');
		}
		#end
	}
}