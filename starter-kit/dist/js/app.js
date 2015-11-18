var Window, app, client, mainWindow;

app = require("app");

Window = require("browser-window");

mainWindow = null;

client = require('electron-connect').client;

app.on("ready", function() {
  mainWindow = new Window({
    width: 800,
    height: 600
  });
  mainWindow.loadUrl("file://" + __dirname + "/../index.html");
  mainWindow.on("closed", function() {
    return app.quit();
  });
  return client.create(mainWindow);
});
