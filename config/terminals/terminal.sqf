/*
    ACCOUNTS
    Defines the accounts that are available in the terminal.
    Players will be able to log into these accounts using the LOGIN command.

    FORMAT:
      [username, password, clearanceLevel]
      - username (String): the username of the account (must not start with "guest")
      - password (String): the password of the account (can be left empty)
      - clearanceLevel (Integer): the clearance level of the account

    NOTE: 'username' and 'password' must not contain characters that require using the 'Alt Gr' key.
          Those characters cannot be typed into the terminal interface, therefore preventing players from logging into the accounts involved.
*/
_accounts = [
  ["root", "password", 7],
  ["poslovitch", "corp4ever", 1]
];

/*
    FILES
    Defines the files that are available in the terminal.
    Players will be able to read the content of these files using the CAT command, provided that the clearance level of the account they are logged into is high enough.

    FORMAT:
      [filename, requiredClearanceLevel, text]
      - filename (String): the name of the file
      - requiredClearanceLevel (Integer): the minimum clearance level required in order to see and read the file.
      - text (String): the contents of the file.

    NOTE: 'filename' must not contain characters that require using the 'Alt Gr' key.
          Those characters cannot be typed into the terminal interface, therefore preventing players from accessing the file.
*/
_files = [
  ["password.txt", 0, "Good job, soldier.\n\nYou may now log into the root account using the following password: password."],
  ["goodjob.txt", 7, "Well done! You now have full control over this computer!"]
];

/*
  COMMANDS
  Defines custom commands that are available in the terminal.
  Players will be able to see these commands in the HELP and to use them, provided that the clearance level of the account they are logged into is high enough.

  FORMAT:
    [name, aliases, parameters, requiredClearanceLevel, description, code]
    - name (String): the name of the command
    - aliases (Array of Strings): the aliases of the command, i.e. alternative command names.
    - parameters (Array of Parameters):
      [name, isMandatory]
      - name (String): the name of the parameter
      - isMandatory (Boolean): /!\ Not implemented yet
    - requiredClearanceLevel (Integer): the minimum clearance level required in order to see and use the command.
    - description (String): the description of the command (shown in the HELP).
    - code (Code): the code to execute when the command is entered.
      Passed arguments are the following:
      [terminal, params]
        - terminal (Terminal): array containing the terminal's data.
        - params (Array of Strings): array containing the parameters provided by the player.

    NOTE: 'name' and 'aliases' must not contain characters that require using the 'Alt Gr' key.
          Those characters cannot be typed into the terminal interface, therefore preventing players from entering the command.
*/
_customCommands = [
  ["testcustom", ["alias"], [["param1", true], ["param2", false]], 0, "command description", {params["_terminal", "_params"]; [_terminal, "Test successful."] call HKX_fnc_printf;}],
  ["testpsl", [], [], 1, "command for poslovitch", {params["_terminal", "_params"]; [_terminal, "At least you are Poslovitch..."] call HKX_fnc_printf;}]
];

// DO NOT REMOVE THIS LINE.
[_accounts, _files, _customCommands];
