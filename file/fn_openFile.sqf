/*
    Displays this file's content into the specified terminal.

    PARAMETERS:
      0 (Mandatory):
        ARRAY - the terminal.
      1 (Mandatory):
        STRING - the name of the file to open.

    RETURNS:
      Nothing.

    SINCE:
      0.0.4
*/

params["_terminal", "_filename"];
_files = _terminal select 8;

private _index = _files findIf {_x select 0 == _filename};
_file = _files select _index;

private _header = "********** " + (_file select 0) + " **********";
[_terminal, " " + endl + _header + endl + " "] call HKX_fnc_printf;

[_terminal, _file select 2] call HKX_fnc_printf;

private _footer = "";
for [{private _i = 0}, {_i < count _header}, {_i = _i + 1}] do {_footer = _footer + "*"};
[_terminal, " " + endl + _footer + endl + " "] call HKX_fnc_printf;
