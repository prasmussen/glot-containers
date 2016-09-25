var jsdom = require("jsdom").jsdom;
document = jsdom();

var elm = require("./elm.js");
elm.Main.fullscreen();

setTimeout(function() {
  var content = document.body.innerHTML;
  process.stdout.write(content);
}, 0);
