var system = require('system');
var args = system.args;

if (args.length != 3) phantom.exit();
var url = args[1];
var selector = args[2];

// Optimisation urgente : prendre tous les selectors en argument pour ne charger la page qu'une seule fois et faire tous les extract dessus plutot que de la télécharger une fois par selector
// Je fais au plus vite par manque de temps, mais l'opti serait à faire en priorité.

var page = require('webpage').create();
page.open(url, function (status) {
    var result = page.evaluate(function(s) {
	return document.querySelector(s).innerText;
    }, selector);
    console.log(result);
    phantom.exit();
});
