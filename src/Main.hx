package ;

import haxe.ui.HaxeUIApp;
import haxe.ui.Toolkit;

class Main {
    public static function main() {
        var app = new HaxeUIApp();
        app.ready(function() {
			app.addComponent(new MainView());

            app.start();
        });
        Toolkit.init();
    }
}
