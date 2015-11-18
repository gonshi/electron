var data, fs, path;

fs = require("fs");

path = require("path");

data = null;

fs.readFile("" + (path.join(__dirname, "test.txt")), "utf8", function(err, data) {
  return data = data;
});

document.body.addEventListener("click", function() {
  data += "\nfuga";
  return fs.writeFile("" + (path.join(__dirname, "test.txt")), data, function(err) {
    return console.log(err);
  });
});
