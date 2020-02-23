/*
        HackEX v0.0.2 (Released on 24/02/2020)
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
