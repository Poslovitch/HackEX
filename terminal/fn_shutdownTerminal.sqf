/**
 * Shuts down the Terminal. Removes its "Open" action and replaces it with a "Boot up".
 * Calling this function will do nothing it the terminal was previously shut down.
 * In the future, it might also do some handsome animations.
 */
params["_terminal"];

private _state = _terminal get "state";

if (!(_state == "SHUTDOWN")) then {
  // Only do something if the terminal is not already shut down
  _terminal set ["state", "SHUTDOWN"];
  
  // TODO : logout the current account
  [_terminal] call HKX_fnc_closeTerminal; // Close the terminal
};
