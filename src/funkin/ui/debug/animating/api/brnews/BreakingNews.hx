package funkin.ui.debug.animating.api.brnews;

import funkin.ui.debug.animating.api.brnews.BreakingNewsData;
import haxe.Http;
import haxe.Json;
import haxe.ui.containers.dialogs.CollapsibleDialog;
import haxe.ui.containers.dialogs.Dialogs;
import sys.io.File;

class BreakingNews {
    static function breakNewsMainT() {
        // 取得したい GitHub リポジトリの情報
        var owner = "youbadao-sussy"; // リポジトリ所有者
        var repo = "Horizon-Animation-Editor"; // リポジトリ名
        var path = "api/breakingNews/vreakNews.json"; // リポジトリ内の JSON ファイルパス
        var branch = "main"; // ブランチ名

        // GitHub API の raw URL
        var url = 'https://raw.githubusercontent.com/$owner/$repo/$branch/$path';

        trace("Fetching JSON from: " + url);

        var http = new Http(url);

        // 必要に応じて GitHub トークンを設定（非公開リポジトリの場合）
        // http.setHeader("Authorization", "token YOUR_GITHUB_TOKEN");

        http.onData = function(data:String) {
            /*
            try {
                // JSON をパース
                var jsonData:BreakingNewsData = Json.parse(data);

                // 例: JSON の内容を表示
                trace("Parsed JSON: " + jsonData);

                // 特定キーの値を利用
                if (Reflect.hasField(jsonData, "name")) {
                    trace("Name field: " + Reflect.field(jsonData, "name"));
                }

            } catch (e:Dynamic) {
                trace("JSON parse error: " + e);
            }
            */
            var jsonData:BreakingNewsData = Json.parse(data);
			if (jsonData.news.text != "none") {
				Dialogs.messageBox(jsonData.title + "\n" + jsonData.about + "\n" + jsonData.date + "\n" + jsonData.news.text, 'BREAKING NEWS!!!', 'info');
            } else {
                #if WORKINGMODE
                    Dialogs.messageBox("Don't worry, it's working YEE", 'BREAKING NEWS!!!', 'info');
                #else
                    Dialogs.messageBox("As of now, no news infomation has come in.", 'BREAKING NEWS!!!', 'info');
                #end
            }
        }
        
        http.onError = function(error:String) {
            trace("HTTP error: " + error);
            Dialogs.messageBox("oh...", 'ERROR!', 'error');
        }

        http.request();
    }
}
