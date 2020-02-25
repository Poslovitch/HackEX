params["_terminal", "_input"];

switch(_input) do {
  case "@ENTER": {
    [_terminal, endl] call HKX_fnc_printf;
    [_terminal, (_terminal select 3) + "@" + (_terminal select 1) + "> " + (_terminal select 7)] call HKX_fnc_printf;

    [_terminal] call HKX_fnc_processCLCommand;
    [_terminal] call HKX_fnc_updateCLDisplay;

    // reset the history index
    player setVariable ["HKX_varplayer_commandLineHistoryIndex", (count (_terminal select 6)) - 1];
  };
  case "@ESC": {
    [_terminal] call HKX_fnc_closeTerminal;
  };
  case "@BACKSPACE": {
    // Gets the current command
    private _cmd = _terminal select 7;

    if ((count _cmd) > 0) then {
      // Remove the last character from the command
      _cmd = _cmd select [0, ((count _cmd) - 1)];
    };

    _terminal set [7, _cmd];
    [_terminal] call HKX_fnc_updateCLDisplay;
  };
  case "@ARROW_UP": {
    _history = _terminal select 6;
    private _index = player getVariable ["HKX_varplayer_commandLineHistoryIndex", (count (_terminal select 6)) - 1];

    // Set the command line input to the history
    _terminal set [7, _history select _index];

    _index = _index - 1;
    if (_index < 0) then {
      _index = 0;
    };
    player setVariable ["HKX_varplayer_commandLineHistoryIndex", _index];
    [_terminal] call HKX_fnc_updateCLDisplay;
  };
  case "@ARROW_DOWN": {
    _history = _terminal select 6;
    private _index = player getVariable ["HKX_varplayer_commandLineHistoryIndex", (count (_terminal select 6)) - 1];

    // Set the command line input to the history
    _terminal set [7, _history select _index];

    _index = _index + 1;
    if (_index > ((count _history) - 1)) then {
      _index = count _history - 1;
    };
    player setVariable ["HKX_varplayer_commandLineHistoryIndex", _index];
    [_terminal] call HKX_fnc_updateCLDisplay;
  };
  default {
    // Add the input to the command line
    _terminal set [7, (_terminal select 7) + _input];
    [_terminal] call HKX_fnc_updateCLDisplay;
  };
};
