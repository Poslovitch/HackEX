class HackEX {
  tag = "HKX";

  class Terminal {
    file = "terminal";

    class getTerminal {};
    class addActionTerminal {};
    class openTerminal {};
    class closeTerminal {};
    class saveTerminal {};
  };

  class CommandLine {
    file = "command_line";
    class print {};
    class printf {};
    class initCLSession {};
    class processCLUserInput {};
    class updateCLDisplay {};
    class processCLCommand {};
  };

  class CommandLineCommand {
    file = "command_line\commands"

    class clCmdHelp {};
    class clCmdUname {};
    class clCmdTrigger {};
  };

  class Input {
    file = "input";

    class dikToChar {};
  }
}
