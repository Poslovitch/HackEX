params["_terminal", "_text"];
private _lines = _terminal select 5; 
_lines append (_text splitString endl); // Add the new text to the bottom.
_terminal set [5, _lines];

[_terminal] call HKX_fnc_updateCLDisplay;
