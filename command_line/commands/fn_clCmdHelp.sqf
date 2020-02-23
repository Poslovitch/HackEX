/*
   Displays the help of this terminal.
   The commands that are displayed depending on the clearance level of the account.
*/
params["_terminal"];

_user = _terminal select 3;
_accounts = _terminal select 2;

_index = _accounts findIf {(_x select 0) == _user};

[_terminal, "Available commands [CLEARANCE LEVEL " + str (_accounts select _index select 2) + "]:"] call HKX_fnc_printf;
[_terminal, "  - HELP/MAN: displays available commands"] call HKX_fnc_printf;
//[_terminal, "  - LOGIN <username>: logs in the account"] call HKX_fnc_printf;
[_terminal, "  - UNAME: displays Linux Kernel version information"] call HKX_fnc_printf;
[_terminal, "  - CLEAR: clears the screen"] call HKX_fnc_printf;
[_terminal, "  - TRIGGER: makes something go BOOM."] call HKX_fnc_printf;
