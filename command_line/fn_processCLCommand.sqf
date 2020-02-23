params["_terminal"];

private _cmd = _terminal select 6;
_cmd = toLower _cmd;

_terminal set [6, ""]; // Reset the command line

switch (_cmd) do {
  case "help": {[_terminal] call HKX_fnc_clCmdHelp;};
  case "uname": {[_terminal, "Linux 4.2.27-23-generic-pae"] call HKX_fnc_printf;};
  case "trigger": {
    (_terminal select 0) setVariable ["HKX_trigger", true];
    [_terminal, "Successfully toggled on Switch #42251"] call HKX_fnc_printf;
  };
  case "clear": {
    _terminal set [5, ""]; // Clear the display
    [_terminal] call HKX_fnc_updateCLDisplay;
  };
  default {
    // Unknown command
    [_terminal, "Error: Unknown command. Type HELP to display a list of available commands."] call HKX_fnc_printf;
  };
};
