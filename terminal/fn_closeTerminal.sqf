params["_terminal"];

[_terminal] call HKX_fnc_saveTerminal;

closeDialog 1;

[_terminal get "object", _terminal] call HKX_fnc_addActionTerminal;
