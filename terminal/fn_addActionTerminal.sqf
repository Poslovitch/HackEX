/*
    Adds the hold action to the specified terminal.

    PARAMETERS:
      0 (Mandatory):
        OBJECT - the object which the action is assigned to.
      1 (Optional, default false):
        BOOLEAN - true if the previous addAction on the Terminal should be removed.
    RETURNS:
      Nothing.
 */
params ["_object", ["_terminal", createHashMap], ["_removePreviousAction", false]];

_duration = 2;

private _state = "UNKNOWN";
private _actionID = -1;

if (count _terminal > 0) then { // if the hasmap is not empty
  _state = _terminal get "state";
  _actionID = _terminal getOrDefault ["actionID", -1];
};

if (_removePreviousAction && _actionID != -1) then {
  [_terminal, _actionID] remoteExec ["BIS_fnc_holdActionRemove", 0];
};

if (_state == "SHUTDOWN") then {
  _actionID = [
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
    false  // We want to keep the action available even after completion
  ] remoteExec ["BIS_fnc_holdActionAdd", 0];
} else {
  _actionID = [
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
    false  // We want to keep the action available even after completion
  ] remoteExec ["BIS_fnc_holdActionAdd", 0];
};

if (count _terminal > 0) then {
  _terminal set["actionID", _actionID]; // Store the action ID to remove it later
};
