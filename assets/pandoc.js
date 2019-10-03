var FENCED_DIVS = /^(?:<p>)?(?::{3,}$|:{3,}\s*(?:{(.*)}|(.*)<\/p>|(.*))\s*(?:<\/p>)?)/gm;
var BRACKETED_SPANS = /\[([^\]]*)\]\{([^\}]*)\}/g;

var CLASS = /[.](-?[_a-zA-Z]+[_\-a-zA-Z0-9]*)/g;
var ID = /#([A-Za-z]+[\w\-\:\.]*)/g;
var ATTR = /(?<key>[^\t\n\f \/>"'=]+)\s*=\s*(?<val>\"[^"]*\"|\'[^']*\')/g;
var STYLE = /(?<key>[^\t\n\f \/>"'=]+)\s*:\s*(?<val>[^;]*);/g;

function process(spec, initial, end) {
  var processed_spec = initial;
  var classes = spec.match(CLASS);
  classes = Array.isArray(classes) && classes.join(" ").replace(/[.]([^\s]*)/g, "$1");
  if(classes) { processed_spec += "class='" + classes + "' "; }
  
  var ids = spec.match(ID); // there should be only one id
  ids = Array.isArray(ids) && ids.join(" ").replace(/#([^\s]*)/g, "$1");
  if(ids) { processed_spec += "id='" + ids + "' "; }
  
  var attrs = spec.match(ATTR);
  attrs = Array.isArray(attrs) && attrs.join(" ");
  if(attrs) { processed_spec += attrs; }
  
  var styles = spec.match(STYLE);
  styles = Array.isArray(styles) && styles.join(" ");
  if(styles) { processed_spec += "style='" + styles + "' "; }
  
  processed_spec += end; 
  return processed_spec;
}

var content = document.getElementsByClassName("remark-slide-content");
for (var i = 0; i < content.length; i++) {
  // FENCED DIVS
  content[i].innerHTML = content[i].innerHTML.replace(FENCED_DIVS, 
    function(match, spec, class1, class2) {
      var processed_spec;
      if(spec != null) { processed_spec = process(spec, "<div ", ">") }
      return processed_spec || 
        (class1 && "<div class='" + class1 + "'>" ) || 
        (class2 && "<div class='" + class2 + "'>" ) || 
        '</div>';
    });
  // BRACKETED_SPANS
  content[i].innerHTML = content[i].innerHTML.replace(BRACKETED_SPANS, 
    function(match, text, spec) {
      if(spec != null) { processed_spec = process(spec, "<span ", ">" + text + "</span>") }
      return processed_spec;
    });
}


