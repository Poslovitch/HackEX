params["_terminal"];

openedTerminals = [_terminal];
publicVariableServer "openedTerminals";

private _lines = (_terminal select 5) splitString endl; // We split the text based on \n or \r.
_lines pushBack ((_terminal select 3) + "@" + (_terminal select 1) + "> " + (_terminal select 6));

while {(count _lines) > 25} do {                    // TODO: calculer un nombre de lignes
  _lines deleteAt 0;
};

_newText = _lines joinString endl;
ctrlSetText [1, _newText];
