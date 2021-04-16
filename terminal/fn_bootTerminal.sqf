/**
 * Boots up the Terminal
 */
params["_target"];

private _terminal = [_target] call HKX_fnc_getTerminal;
private _poweredOn = _terminal get "poweredOn";

if (!_poweredOn) then {
  // Only do something if the terminal is not already shut down
  _terminal set ["poweredOn", true];

  [_target, _terminal] call HKX_fnc_addActionTerminal; // Call this function to replace the addAction
};
