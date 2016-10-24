var { app, BrowserWindow } = require('electron');
var mainWindow = null;
var entry = `file://${__dirname}/dist/index.html`
app.on('window-all-closed', function() {
    app.quit();
});

app.on('ready', function() {
  mainWindow = new BrowserWindow({
    "width": 800,
    "height": 600,
    "transparent": false,
    "frame": false,
    "always-on-top": true,
    "resizable": false
  });
  mainWindow.loadURL(entry);
  mainWindow.on('closed', function() {
    mainWindow = null;
  });
});
