params["_terminal"];

_target = _terminal select 0;

_target setVariable ["HKX_varTerminal_name", _terminal select 1];
_target setVariable ["HKX_varTerminal_registeredAccounts", _terminal select 2];
_target setVariable ["HKX_varTerminal_currentAccount", _terminal select 3];
_target setVariable ["HKX_varTerminal_state", _terminal select 4];
_target setVariable ["HKX_varTerminal_commandLineStorage", _terminal select 5];
_target setVariable ["HKX_varTerminal_commandLineInput", _terminal select 6];
