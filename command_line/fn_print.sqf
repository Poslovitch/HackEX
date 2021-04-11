params["_terminal", "_text"];

_lines = _terminal get "clDisplay";

private _lastIndex = 0;
if ((count _lines) > 0) then {
  _lastIndex = (count _lines) - 1;
};
_lines set [_lastIndex, (_lines select _lastIndex) + _text];

_terminal set ["clDisplay", _lines];

[_terminal] call HKX_fnc_updateCLDisplay;
