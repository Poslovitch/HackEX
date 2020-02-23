params["_terminal", "_text"];
private _lines = (_terminal select 5) splitString endl; // We split the text based on \n or \r.
_lines append (_text splitString endl); // Add the new text to the bottom.

_newText = _lines joinString endl;

_terminal set [5, _newText];

[_terminal] call HKX_fnc_updateCLDisplay;
