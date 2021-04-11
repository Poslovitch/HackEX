params["_terminal"];

openedTerminals = [_terminal];
publicVariableServer "openedTerminals";

private _lines = _terminal get "clDisplay";

while {(count _lines) > 40} do {                    // TODO: calculer un nombre de lignes
  _lines deleteAt 0;
};

_newLines = +_lines; // Copy the array
_newText = _newLines joinString endl;
ctrlSetText [1, _newText];

// Update the input line
_newInputLine = (_terminal get "currentAccount") + "@" + (_terminal get "name") + "> " + (_terminal get "clInput") + "_";
ctrlSetText[2, _newInputLine];
