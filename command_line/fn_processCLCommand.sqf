params["_terminal"];

private _input = _terminal select 7;

// Add the command to the history
(_terminal select 6) pushBackUnique _input;

// Make it an array to separate the command and the params
_input = _input splitString " ";
private _cmd = toLower (_input select 0);

_input deleteAt 0;
private _params = _input;

_terminal set [7, ""]; // Reset the command line

// Get user's clearance
private _user = _terminal select 3;
_accounts = _terminal select 2;
_index = _accounts findIf {(_x select 0) == _user};
private _userClearance = _accounts select _index select 2;

// Handle the command
scopeName "main";
switch (_cmd) do {
  case "?";
  case "h";
  case "man";
  case "help": {[_terminal] call HKX_fnc_clCmdHelp;};
  case "uname": {[_terminal, "Linux 4.2.27-23-generic-pae"] call HKX_fnc_printf;};
  case "clear": {
    _terminal set [5, ""]; // Clear the display
    [_terminal] call HKX_fnc_updateCLDisplay;
  };
  case "su";
  case "login": {
    if ((count _params) == 2) then { // Make sure the user provided both username and password.
      private _username = _params select 0;
      private _password = _params select 1;

      _accounts = _terminal select 2;
      private _index = _accounts findIf {(_x select 0) == _username};
      if (_index == -1) then {
        [_terminal, "Error: Invalid credentials."] call HKX_fnc_printf;
      } else {
        private _account = _accounts select _index; // Get the account the user is trying to log into.
        if ((_terminal select 3) != (_account select 0)) then { // Make sure the account is different from the current one.
          _pwd = _account select 1;
          if (_password == _pwd) then {
            _terminal set [5, ""]; // Clear the display
            _terminal set [3, _account select 0];
            [_terminal, "Logged in as " + _username + "."] call HKX_fnc_printf;
          } else {
            [_terminal, "Error: Invalid credentials."] call HKX_fnc_printf;
          };
        } else {
          [_terminal, "Error: Already logged into requested account."] call HKX_fnc_printf;
        };
      };
    } else {
      [_terminal, "Error: Please provide a username and a password."] call HKX_fnc_printf;
    };
  };
  case "exit";
  case "logout": {
    _currentAccount = _terminal select 3;
    if (!("guest" in _currentAccount)) then {
      _terminal set [5, ""]; // Clear the display
      [_terminal] call HKX_fnc_initCLSession;
    } else {
      [_terminal, "Error: Not logged into any account."] call HKX_fnc_printf;
    };
  };
  case "ls": {
    _files = _terminal select 8;
    _accounts = _terminal select 2;
    private _account = _accounts select (_accounts findIf {(_x select 0) == (_terminal select 3)}); // Get the account the user is trying to log into.
    private _accountClearance = _account select 2;
    {
      _fileClearance = _x select 1;
      if (_accountClearance >= _fileClearance) then {
        _name = _x select 0;
        [_terminal, _name] call HKX_fnc_printf;
      };
    } forEach _files;
  };
  case "cat": {
    if (count _params == 1) then {
      if ([_terminal, _params select 0] call HKX_fnc_existsFile) then {
        [_terminal, _params select 0] call HKX_fnc_openFile;
      } else {
        [_terminal, "Error: Unknown file."] call HKX_fnc_printf;
      };
    } else {
      [_terminal, "Error: Please provide a file name."] call HKX_fnc_printf;
    };
  };
  default {
    // Custom commands
    _customCommands = _terminal select 9;
    {
      _names = [_x select 0];
      _names append (_x select 1);
      _parameters = _x select 2;
      _clearance = _x select 3;
      _code = _x select 5;

      {
        if (_x == _cmd && _userClearance >= _clearance) then {
          [_terminal, _params] call _code;
          breakTo "main";
        };
      } forEach _names;
    } forEach _customCommands;

    // Unknown command
    [_terminal, "Error: Unknown command. Type HELP or MAN to display a list of available commands."] call HKX_fnc_printf;
  };
};
