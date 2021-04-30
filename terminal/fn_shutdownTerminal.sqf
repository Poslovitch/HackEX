/**
 * Shuts down the Terminal. Removes its "Open" action and replaces it with a "Boot up".
 * Calling this function will do nothing it the terminal was previously shut down.
 * In the future, it might also do some handsome animations.
 */
params["_terminal"];

private _poweredOn = _terminal get "poweredOn";

if (_poweredOn) then {
  // Only do something if the terminal is not already shut down
  _terminal set ["poweredOn", false];
  (_terminal get "object") setObjectTextureGlobal [0, "#(rgb,8,8,3)color(0,0,0,1)"]; // Black
  // TODO : logout the current account
  [_terminal] call HKX_fnc_closeTerminal; // Close the terminal
};
