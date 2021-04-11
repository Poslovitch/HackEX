class HackEX {
  tag = "HKX";

  class Terminal {
    file = "HackEX\terminal";

    class getTerminal {};
    class addActionTerminal {};
    class openTerminal {};
    class closeTerminal {};
    class saveTerminal {};
  };

  class CommandLine {
    file = "HackEX\command_line";

    class print {};
    class printf {};
    class initCLSession {};
    class processCLUserInput {};
    class updateCLDisplay {};
    class processCLCommand {};
  };

  class CommandLineCommand {
    file = "HackEX\command_line\commands";

    class clCmdHelp {};
    class clCmdRun {};
  };

  class Input {
    file = "HackEX\input";

    class dikToChar {};
  };

  class File {
    file = "HackEX\file";

    class openFile {};
    class existsFile {};
  };

  class AppPowerPlant {
    file = "HackEX\apps\powerplant";

    class appPowerPlant{};
  };
};
