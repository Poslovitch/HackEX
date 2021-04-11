params["_terminal", "_text"];

private _lines = _terminal get "clDisplay";
_lines append (_text splitString endl); // Add the new text to the bottom.
_terminal set ["clDisplay", _lines];

[_terminal] call HKX_fnc_updateCLDisplay;
