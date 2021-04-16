params["_terminal"];

_target = _terminal get "object";

_vars = [
  "name",
  "accounts",
  "currentAccount",
  "state",
  "clDisplay",
  "clHistory",
  "clInput",
  "files",
  "customCommands",
  "poweredOn"
];

{
  _target setVariable ["HKX_terminal_" + _x, _terminal get _x, true];
} forEach _vars;
