package ;

import funkin.ui.debug.animating.AnimationEditor;
import haxe.ui.HaxeUIApp;
import haxe.ui.Toolkit;

class Main {
    public static function main() {
        var app = new HaxeUIApp();
        app.ready(function() {
			app.addComponent(new AnimationEditor());

            app.start();
        });
        Toolkit.init();
    }
}
