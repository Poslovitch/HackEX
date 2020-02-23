_duration = 2;

/*
    Adds the hold action to the specified terminal.

    PARAMETERS:
      0 (Mandatory):
        OBJECT - the object which the action is assigned to.

    RETURNS:
      Nothing.
 */
params ["_terminal"];
[
_terminal,
"Ouvrir le terminal",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa",
"_this distance _target < 2",
"_caller distance _target < 2",
{_caller action ["SwitchWeapon", _caller, _caller, 100]},	// Make the player put its weapon in its back when starting to hack
{},
{ [_target, _caller] call HKX_fnc_openTerminal },				          // Open the terminal
{},
[],
_duration,
0,
false                                                     // We want to keep the action available
] remoteExec ["BIS_fnc_holdActionAdd", 0, _terminal];
