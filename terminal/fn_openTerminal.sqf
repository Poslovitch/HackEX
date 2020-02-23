/*
    Shows this terminal to the specified player.

    PARAMETERS:
      0 (Mandatory):
        OBJECT - the terminal.
      1 (Mandatory):
        OBJECT - the player that is opening the terminal.

    RETURNS:
      Terminal.
 */
params["_target", "_caller"];
"Terminal" remoteExec ["createDialog", _caller]; // Only show the Terminal to the caller.
private _terminal = [_target] call HKX_fnc_getTerminal;
//TODO: sauvegarder

// Now we are displaying the header.
sleep 0.3; // TODO: faire une fonction qui se charge au onLoad du dialogue pour mettre le texte

// init the CL session if nothing happened so far, otherwise display previous data
if ((_terminal select 5) == "") then {
  [_terminal] call HKX_fnc_initCLSession;
} else {
  [_terminal] call HKX_fnc_updateCLDisplay;
};

(findDisplay 42001) displayAddEventHandler["KeyDown", {
  _tml = openedTerminals select 0;

  _pressedKey = (_this select 1);
  _shift = (_this select 2);
  _control = (_this select 3);

  _input = [_pressedKey, _shift, _control] call HKX_fnc_dikToChar;
  [_tml, _input] call HKX_fnc_processCLUserInput;
  true
}];
