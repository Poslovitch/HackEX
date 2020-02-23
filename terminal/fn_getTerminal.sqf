/*
    Creates a Terminal object.

    RETURNS:
      Terminal.
 */

params ["_target"];

// Init the various variables
_randomGuestNumber = str round (random 9999);

private _registeredUsers = _target getVariable ["HKX_varTerminal_registeredUsers", [["root", "password", 7], ["guest" + _randomGuestNumber, "", 0]]]; // Users registered on this terminal.
private _currentUser = _target getVariable ["HKX_varTerminal_currentUser", "guest" + _randomGuestNumber];        // User logged in (UserID or Guest if none is logged in).
private _name = _target getVariable ["HKX_varTerminal_name", "corpcmp_" + str round (random 99999)]; // Name of the terminal (used in display).
private _state = "COMMAND_LINE";
private _commandLineStorage = _target getVariable ["HKX_varTerminal_commandLineStorage", ""]; // Content displayed by the terminal in COMMAND_LINE mode.
private _commandLineInput = _target getVariable ["HKX_varTerminal_commandLineInput", ""]; // Stores the command that the player is typing.

[
  _target,
  _name,
  _registeredUsers,
  _currentUser,
  _state,
  _commandLineStorage,
  _commandLineInput
];
