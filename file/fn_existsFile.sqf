params["_terminal", "_filename"];
_files = _terminal select 7;

private _index = _files findIf {_x select 0 == _filename};

_index != -1;
