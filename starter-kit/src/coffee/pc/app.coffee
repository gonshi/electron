# アプリケーションのライフサイクルをコントロールするモジュール
app = require "app"
# アプリケーションのウィンドウを作成するためのモジュール
Window = require "browser-window"
# GCで回収されないようにメインウィンドウはグローバル領域で宣言します。
mainWindow = null
# Electronの初期化が完了したら呼び出されます。

client = require('electron-connect').client

app.on "ready", ->
    # 画面を表示します。
    mainWindow = new Window
        width: 800
        height: 600

    # 画面の内容となるHTMLファイルをロードします。
    mainWindow.loadUrl "file://#{__dirname}/../index.html"
    # ウィンドウが閉じられたら、アプリも終了するようにします。
    mainWindow.on "closed", -> app.quit()

    client.create mainWindow
