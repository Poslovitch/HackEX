/**
 * Boots up the Terminal
 */
params["_target"];

private _terminal = [_target] call HKX_fnc_getTerminal;
private _state = _terminal get "state";

if (_state == "SHUTDOWN") then {
  // Only do something if the terminal is not already shut down
  _terminal set ["state", "COMMAND_LINE"];

  [_target, _terminal] call HKX_fnc_addActionTerminal; // Call this function to replace the addAction
};
