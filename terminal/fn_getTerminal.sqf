/*
    Creates a Terminal object.

    RETURNS:
      Terminal.
 */
params ["_target"];

_defaultValues = [] call compile preprocessFileLineNumbers ("HackEX\config\terminals\" + str _target + ".sqf");

// Init the various variables
private _registeredAccounts = _target getVariable ["HKX_varTerminal_registeredAccounts", _defaultValues select 0]; // Users registered on this terminal.
private _currentAccount = _target getVariable ["HKX_varTerminal_currentAccount", ""];        // User logged in (username or empty if none is logged in).
private _name = _target getVariable ["HKX_varTerminal_name", "corpcmp_" + str round (random 99999)]; // Name of the terminal (used in display).
private _state = "COMMAND_LINE";
private _commandLineDisplay = _target getVariable ["HKX_varTerminal_commandLineDisplay", ""]; // Content displayed by the terminal in COMMAND_LINE mode.
private _commandLineHistory = _target getVariable ["HKX_varterminal_commandLineHistory", []]; // Commands that were previously typed.
private _commandLineInput = _target getVariable ["HKX_varTerminal_commandLineInput", ""]; // Stores the command that the player is typing.
private _files = _target getVariable ["HKX_varTerminal_files", _defaultValues select 1];

[
  _target,
  _name,
  _registeredAccounts,
  _currentAccount,
  _state,
  _commandLineDisplay,
  _commandLineHistory,
  _commandLineInput,
  _files
];
