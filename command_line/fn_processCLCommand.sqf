params["_terminal"];

private _input = _terminal get "clInput";

// Add the command to the history
(_terminal get "clHistory") pushBackUnique _input;

// Make it an array to separate the command and the params
_input = _input splitString " ";
private _cmd = toLower (_input select 0);

_input deleteAt 0;
private _params = _input;

_terminal set ["clInput", ""]; // Reset the command line

// Get user's clearance
private _user = _terminal get "currentAccount";
_accounts = _terminal get "accounts";
_i = _accounts findIf {(_x select 0) == _user};
private _userClearance = _accounts select _i select 2;

// Handle the command
scopeName "main";
switch (_cmd) do {
  case "?";
  case "h";
  case "man";
  case "help": {[_terminal] call HKX_fnc_clCmdHelp;};
  case "clear": {
    _terminal set ["clDisplay", []]; // Clear the display
    [_terminal] call HKX_fnc_updateCLDisplay;
  };
  case "su";
  case "login": {
    if ((count _params) == 2) then { // Make sure the user provided both username and password.
      private _username = _params select 0;
      private _password = _params select 1;

      private _index = _accounts findIf {(_x select 0) == _username};
      if (_index == -1) then {
        [_terminal, "Error: Invalid credentials."] call HKX_fnc_printf;
      } else {
        private _account = _accounts select _index; // Get the account the user is trying to log into.
        if ((_terminal get "currentAccount") != (_account select 0)) then { // Make sure the account is different from the current one.
          _pwd = _account select 1;
          if (_password == _pwd) then {
            _terminal set ["clDisplay", []]; // Clear the display
            _terminal set ["currentAccount", _account select 0];
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
    _currentAccount = _terminal get "currentAccount";
    if (!("guest" in _currentAccount)) then {
      _terminal set ["clDisplay", []]; // Clear the display
      [_terminal] call HKX_fnc_initCLSession;
    } else {
      [_terminal, "Error: Not logged into any account."] call HKX_fnc_printf;
    };
  };
  case "ls": {
    _files = _terminal get "files";
    {
      _fileClearance = _x select 1;
      if (_userClearance >= _fileClearance) then {
        _name = _x select 0;
        [_terminal, _name] call HKX_fnc_printf;
      };
    } forEach _files;
  };
  case "cat": {
    if (count _params == 1) then {
      if ([_terminal, _params select 0] call HKX_fnc_existsFile) then {
        _files = _terminal get "files";
        _fileClearance = _files select (_files findIf {_x select 0 == _params select 0}) select 1;
        if (_userClearance >= _fileClearance) then {
          [_terminal, _params select 0] call HKX_fnc_openFile;
        } else {
          [_terminal, "Error: Insufficient permission to read this file."] call HKX_fnc_printf;
        };
      } else {
        [_terminal, "Error: Unknown file."] call HKX_fnc_printf;
      };
    } else {
      [_terminal, "Error: Please provide a file name."] call HKX_fnc_printf;
    };
  };
  case "run": {[_terminal, _params] call HKX_fnc_clCmdRun;};
  default {
    // Custom commands
    _customCommands = _terminal get "customCommands";
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
