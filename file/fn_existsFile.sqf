params["_terminal", "_filename"];
_terminal select 8 findIf {_x select 0 == _filename} != -1;
