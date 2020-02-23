params["_terminal", "_input"];

switch(_input) do {
  case "@ENTER": {
    [_terminal, endl] call HKX_fnc_printf;
    [_terminal, (_terminal select 3) + "> " + (_terminal select 6)] call HKX_fnc_printf;

    [_terminal] call HKX_fnc_processCLCommand;
    [_terminal] call HKX_fnc_updateCLDisplay;
  };
  case "@ESC": {
    [_terminal] call HKX_fnc_closeTerminal;
  };
  case "@BACKSPACE": {
    // Gets the current command
    private _cmd = _terminal select 6;

    if ((count _cmd) > 0) then {
      // Remove the last character from the command
      _cmd = _cmd select [0, ((count _cmd) - 1)];
    };

    _terminal set [6, _cmd];
    [_terminal] call HKX_fnc_updateCLDisplay;
  };
  default {
    // Add the input to the command line
    _terminal set [6, (_terminal select 6) + _input];
    [_terminal] call HKX_fnc_updateCLDisplay;
  };
};
