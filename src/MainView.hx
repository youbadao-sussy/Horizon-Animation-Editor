package ;

import flixel.addons.transition.FlxTransitionSprite.GraphicTransTileDiamond;
import flixel.addons.transition.FlxTransitionableState;
import flixel.addons.transition.TransitionData;
import funkin.ui.debug.animating.AnimationEditorState;
import haxe.ui.containers.VBox;
import haxe.ui.events.MouseEvent;

@:build(haxe.ui.ComponentBuilder.build("assets/main-view.xml"))
class MainView extends VBox {
    public function new() {
        super();
        button1.onClick = function(e) {
			button1.text = "Let's GO!";
        }
    }
    
    @:bind(button2, MouseEvent.CLICK)
    private function onMyButton(e:MouseEvent) {
		button2.text = "File";
    }
}