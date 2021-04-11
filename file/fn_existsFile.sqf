params["_terminal", "_filename"];
_terminal get "files" findIf {_x select 0 == _filename} != -1;
