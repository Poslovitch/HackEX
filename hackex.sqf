/*
        HackEX v0.0.1 (Released on 23/02/2020)
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
