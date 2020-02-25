params["_terminal"];

_target = _terminal select 0;

_target setVariable ["HKX_varTerminal_name", _terminal select 1, true];
_target setVariable ["HKX_varTerminal_registeredAccounts", _terminal select 2, true];
_target setVariable ["HKX_varTerminal_currentAccount", _terminal select 3, true];
_target setVariable ["HKX_varTerminal_state", _terminal select 4, true];
_target setVariable ["HKX_varTerminal_commandLineDisplay", _terminal select 5, true];
_target setVariable ["HKX_varTerminal_commandLineHistory", _terminal select 6, true];
_target setVariable ["HKX_varTerminal_commandLineInput", _terminal select 7, true];
_target setVariable ["HKX_varTerminal_files", _terminal select 8, true];
