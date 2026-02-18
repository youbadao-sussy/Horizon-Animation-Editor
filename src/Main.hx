package ;

import funkin.ui.debug.animating.AnimationEditorState;
import haxe.ui.HaxeUIApp;
import haxe.ui.Toolkit;

class Main {
    public static function main() {
        var app = new HaxeUIApp();
        app.ready(function() {
			app.addComponent(new AnimationEditorState());

            app.start();
        });
        Toolkit.init();
    }
}
