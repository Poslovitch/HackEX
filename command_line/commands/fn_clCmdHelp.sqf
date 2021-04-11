/*
   Displays the help of this terminal.
   The commands that are displayed depending on the clearance level of the account.
*/
params["_terminal"];

private _user = _terminal get "currentAccount";
_accounts = _terminal get "accounts";

_index = _accounts findIf {(_x select 0) == _user};
private _userClearance = _accounts select _index select 2;

[_terminal, "Available commands [CLEARANCE LEVEL " + str _userClearance + "]:"] call HKX_fnc_printf;
[_terminal, "  - HELP: displays available commands"] call HKX_fnc_printf;
[_terminal, "  - MAN: displays available commands"] call HKX_fnc_printf;
[_terminal, "  - LOGIN <username> <password>: logs in the account"] call HKX_fnc_printf;
[_terminal, "  - LOGOUT: logs out of the account and creates a new guest session"] call HKX_fnc_printf;
[_terminal, "  - CLEAR: clears the screen"] call HKX_fnc_printf;
[_terminal, "  - LS: lists files in the current directory"] call HKX_fnc_printf;
[_terminal, "  - CAT <filename>: opens the specified file"] call HKX_fnc_printf;
[_terminal, "  - RUN <app>: launches an app"] call HKX_fnc_printf;
[_terminal, "  - SHUTDOWN: shuts down the terminal"] call HKX_fnc_printf;

_customCommands = _terminal get "customCommands";

{
  _names = [_x select 0];
  _names append (_x select 1);
  _params = _x select 2;
  _clearance = _x select 3;
  _description = _x select 4;

  private _parameters = "";
  // Parse the parameters
  {
    _name = _x select 0;
    _mandatory = _x select 1;

    private _startChar = "[";
    private _endChar = "]";
    if (_mandatory) then {
      _startChar = "<";
      _endChar = ">";
    };

    _parameters = _parameters + " " + _startChar + _name + _endChar;
  } forEach _params;

  // Display the command
  {
    _name = toUpper _x;
    if (_userClearance >= _clearance) then {
      [_terminal, "  - " + _name + _parameters + ": " + _description] call HKX_fnc_printf;
    };
  } forEach _names;
} forEach _customCommands;
