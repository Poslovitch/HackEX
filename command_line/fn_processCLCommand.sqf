params["_terminal"];

private _cmd = _terminal select 6;
_cmd = toLower _cmd;

_terminal set [6, ""]; // Reset the command line

switch (_cmd) do {
  case "help": {[_terminal] call HKX_fnc_clCmdHelp;};
  case "uname": {[_terminal] call HKX_fnc_clCmdUname;};
  case "trigger": {[_terminal] call HKX_fnc_clCmdTrigger;};
  default {
    // Unknown command
    [_terminal, "Error: Unknown command. Type HELP to display a list of available commands."] call HKX_fnc_printf;
  };
};
