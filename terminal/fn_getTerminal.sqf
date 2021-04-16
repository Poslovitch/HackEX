/*
    Creates a Terminal object.

    RETURNS:
      Terminal.
 */
params ["_target"];

_defaultValues = [] call compile preprocessFileLineNumbers ("HackEX\config\terminals\" + str _target + ".sqf");

// Init the various variables
private _registeredAccounts = _target getVariable ["HKX_terminal_accounts", _defaultValues select 0]; // Users registered on this terminal.
private _currentAccount = _target getVariable ["HKX_terminal_currentAccount", ""];        // User logged in (username or empty if none is logged in).
private _name = _target getVariable ["HKX_terminal_name", "corpcmp_" + str round (random 99999)]; // Name of the terminal (used in display).
private _state = "COMMAND_LINE";
private _commandLineDisplay = _target getVariable ["HKX_terminal_clDisplay", []]; // Content displayed by the terminal in COMMAND_LINE mode.
private _commandLineHistory = _target getVariable ["HKX_terminal_clHistory", []]; // Commands that were previously typed.
private _commandLineInput = _target getVariable ["HKX_terminal_clInput", ""]; // Stores the command that the player is typing.
private _files = _target getVariable ["HKX_terminal_files", _defaultValues select 1];
private _customCommands = _target getVariable ["HKX_terminal_customCommands", _defaultValues select 2];

createHashMapFromArray [
  ["object", _target],
  ["name", _name],
  ["accounts", _registeredAccounts],
  ["currentAccount", _currentAccount],
  ["state", _state],
  ["clDisplay", _commandLineDisplay],
  ["clHistory", _commandLineHistory],
  ["clInput", _commandLineInput],
  ["files", _files],
  ["customCommands", _customCommands],
  ["poweredOn", true]
];
