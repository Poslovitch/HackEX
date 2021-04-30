/**
 * Boots up the Terminal
 */
params["_target"];

private _terminal = [_target] call HKX_fnc_getTerminal;
private _poweredOn = _terminal get "poweredOn";

if (!_poweredOn) then {
  // Only do something if the terminal is not already shut down
  _terminal set ["poweredOn", true];
  [_terminal] call HKX_fnc_saveTerminal;

  (_terminal get "object") setObjectTextureGlobal [0, "a3\structures_f\items\electronics\data\electronics_screens_laptop_co.paa"]; // Default texture
  [_target, _terminal] call HKX_fnc_addActionTerminal; // Call this function to replace the addAction
};
