var JSDOM = require("jsdom").JSDOM;
var window = (new JSDOM('')).window;
document = window.document;

var elm = require("./elm.js");
elm.Main.fullscreen();

setTimeout(function() {
  var content = document.body.innerHTML;
  process.stdout.write(content);
}, 0);
