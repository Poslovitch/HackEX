/*
        HackEX v0.0.3
        Made by Poslovitch [https://github.com/Poslovitch].
*/

// [terminal] execVM "hackex.sqf"

_terminal = _this select 0;
_terminal call HKX_fnc_addActionTerminal;

/*
   openedTerminals
*/
openedTerminals = [];
publicVariableServer "openedTerminals";
