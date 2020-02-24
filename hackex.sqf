/*
        HackEX v0.0.4-dev
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
