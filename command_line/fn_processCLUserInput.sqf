params["_terminal", "_input"];

switch(_input) do {
  case "@ENTER": {
    [_terminal, endl] call HKX_fnc_printf;
    [_terminal, (_terminal get "currentAccount") + "@" + (_terminal get "name") + "> " + (_terminal get "clInput")] call HKX_fnc_printf;

    [_terminal] call HKX_fnc_processCLCommand;
    [_terminal] call HKX_fnc_updateCLDisplay;

    // reset the history index
    player setVariable ["HKX_user_clHistoryIndex", (count (_terminal get "clHistory")) - 1];
  };
  case "@ESC": {
    [_terminal] call HKX_fnc_closeTerminal;
  };
  case "@BACKSPACE": {
    // Gets the current command
    private _cmd = _terminal get "clInput";

    if ((count _cmd) > 0) then {
      // Remove the last character from the command
      _cmd = _cmd select [0, ((count _cmd) - 1)];
    };

    _terminal set ["clInput", _cmd];
    [_terminal] call HKX_fnc_updateCLDisplay;
  };
  case "@ARROW_UP": {
    _history = _terminal get "clHistory";
    private _index = player getVariable ["HKX_user_clHistoryIndex", (count (_terminal get "clHistory")) - 1];

    // Set the command line input to the history
    _terminal set ["clInput", _history select _index];

    _index = _index - 1;
    if (_index < 0) then {
      _index = 0;
    };
    player setVariable ["HKX_user_clHistoryIndex", _index];
    [_terminal] call HKX_fnc_updateCLDisplay;
  };
  case "@ARROW_DOWN": {
    _history = _terminal get "clHistory";
    private _index = player getVariable ["HKX_user_clHistoryIndex", (count (_terminal get "clHistory")) - 1];

    // Set the command line input to the history
    _terminal set ["clInput", _history select _index];

    _index = _index + 1;
    if (_index > ((count _history) - 1)) then {
      _index = count _history - 1;
    };
    player setVariable ["HKX_user_clHistoryIndex", _index];
    [_terminal] call HKX_fnc_updateCLDisplay;
  };
  default {
    // Add the input to the command line
    _terminal set ["clInput", (_terminal get "clInput") + _input];
    [_terminal] call HKX_fnc_updateCLDisplay;
  };
};
