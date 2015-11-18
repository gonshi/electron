fs = require "fs"
path = require "path"
data = null

fs.readFile "#{path.join(__dirname, "test.txt")}", "utf8", (err, data) ->
    data = data

document.body.addEventListener "click", ->
    data += "\nfuga"
    fs.writeFile "#{path.join(__dirname, "test.txt")}", data, (err) ->
        console.log err
