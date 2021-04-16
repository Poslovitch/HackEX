/*
    Adds the hold action to the specified terminal.

    PARAMETERS:
      0 (Mandatory):
        OBJECT - the object which the action is assigned to.
      1 (Optional):
        HASHMAP - the terminal.
    RETURNS:
      Nothing.
 */
params ["_object", ["_terminal", createHashMap]];

private _duration = 2;

private _poweredOn = true;
if (count _terminal > 0) then { // if the hashmap is not empty
  _poweredOn = _terminal get "poweredOn";
};

if (!_poweredOn) then {
  [
    _object,
    "Allumer l'ordinateur",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
    "_this distance _target < 2",
    "_caller distance _target < 2",
    {},
    {},
    { [_target] call HKX_fnc_bootTerminal },  // Boot up the terminal
    {},
    [],
    _duration,
    0,
    true  // We want to remove the action after completion
  ] remoteExec ["BIS_fnc_holdActionAdd", 0];
} else {
  [
    _object,
    "Ouvrir le terminal",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa",
    "_this distance _target < 2",
    "_caller distance _target < 2",
    {},
    {},
    { [_target, _caller] call HKX_fnc_openTerminal },  // Open the terminal
    {},
    [],
    _duration,
    0,
    true  // We will readd the action whenever necessary
  ] remoteExec ["BIS_fnc_holdActionAdd", 0];
};
