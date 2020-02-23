params["_terminal"];

[_terminal, "***************************************" + endl
          + "  No active session found." + endl
          + "  In compliance with the SYSTEM SETTINGS, a temporary restricted logon has been created." + endl
          + "  Please log on to your usual account using the LOGIN command." + endl
          + "  NOTE: Unless it is intentional, it is highly recommended to disable this feature once the user accounts have been set up completely." + endl
          + "***************************************" + endl] call HKX_fnc_printf;
[_terminal, "PoslOS | GNU/Linux PoslOS 0.0.1" + endl + " "] call HKX_fnc_printf;
[_terminal, "The programs included with the PoslOS GNU/Linux system are free software: the exact distribution terms for each program are described in the individual files in user/share/doc/*/copyright." + endl] call HKX_fnc_printf;
[_terminal, "PoslOS GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent permitted by applicable law." + endl] call HKX_fnc_printf;
