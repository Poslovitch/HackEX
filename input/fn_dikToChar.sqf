params["_dikCode","_shift","_control"];

private _char = "";

switch(_dikCode) do {
  // Special handling
  case 1: {_char = "@ESC";};
  case 14: {_char = "@BACKSPACE";};
  case 28: {_char = "@ENTER";};
  case 156: {_char = "@ENTER";};

  // Special characters
  case 2: {
    if (_shift) then {
      _char = "1";
    } else {
      _char = "&";
    };
  };
  case 3: {
    if (_shift) then {
      _char = "2";
    } else {
      _char = "é";
    };
  };
  case 4: {
    if (_shift) then {
      _char = "3";
    } else {
      _char = "''";
    };
  };
  case 5: {
    if (_shift) then {
      _char = "4";
    } else {
      _char = "'";
    };
  };
  case 6: {
    if (_shift) then {
      _char = "5";
    } else {
      _char = "(";
    };
  };
  case 7: {
    if (_shift) then {
      _char = "6";
    } else {
      _char = "-";
    };
  };
  case 8: {
    if (_shift) then {
      _char = "7";
    } else {
      _char = "è";
    };
  };
  case 9: {
    if (_shift) then {
      _char = "8";
    } else {
      _char = "_";
    };
  };
  case 10: {
    if (_shift) then {
      _char = "9";
    } else {
      _char = "ç";
    };
  };
  case 11: {
    if (_shift) then {
      _char = "0";
    } else {
      _char = "à";
    };
  };
  case 12: {
    if (_shift) then {
      _char = "°";
    } else {
      _char = ")";
    };
  };
  case 13: {
    if (_shift) then {
      _char = "+";
    } else {
      _char = "=";
    };
  };
  case 15: {_char = "    ";}; // Tab = 4 spaces
  case 26: {
    if (_shift) then {
      _char = "¨";
    } else {
      _char = "^";
    };
  };
  case 27: {
    if (_shift) then {
      _char = "£";
    } else {
      _char = "$";
    };
  };
  case 40: {
    if (_shift) then {
      _char = "%";
    } else {
      _char = "ù";
    };
  };
  case 41: {_char = "²";};
  case 43: {
    if (_shift) then {
      _char = "µ";
    } else {
      _char = "*";
    };
  };
  case 50: {
    if (_shift) then {
      _char = "?";
    } else {
      _char = ",";
    };
  };
  case 51: {
    if (_shift) then {
      _char = ".";
    } else {
      _char = ";";
    };
  };
  case 52: {
    if (_shift) then {
      _char = "/";
    } else {
      _char = ":";
    };
  };
  case 53: {
    if (_shift) then {
      _char = "§";
    } else {
      _char = "!";
    };
  };
  case 57: {_char = " ";};
  case 86: {
    if (_shift) then {
      _char = ">";
    } else {
      _char = "<";
    };
  };

  // Actual letters
  case 16: {_char = "a";};
  case 17: {_char = "z";};
  case 18: {_char = "e";};
  case 19: {_char = "r";};
  case 20: {_char = "t";};
  case 21: {_char = "y";};
  case 22: {_char = "u";};
  case 23: {_char = "i";};
  case 24: {_char = "o";};
  case 25: {_char = "p";};
  case 30: {_char = "q";};
  case 31: {_char = "s";};
  case 32: {_char = "d";};
  case 33: {_char = "f";};
  case 34: {_char = "g";};
  case 35: {_char = "h";};
  case 36: {_char = "j";};
  case 37: {_char = "k";};
  case 38: {_char = "l";};
  case 39: {_char = "m";};
  case 44: {_char = "w";};
  case 45: {_char = "x";};
  case 46: {_char = "c";};
  case 47: {_char = "v";};
  case 48: {_char = "b";};
  case 49: {_char = "n";};

  // Numpad
  case 55: {_char = "*";};
  case 71: {_char = "7";};
  case 72: {_char = "8";};
  case 73: {_char = "9";};
  case 74: {_char = "-";};
  case 75: {_char = "4";};
  case 76: {_char = "5";};
  case 77: {_char = "6";};
  case 78: {_char = "+";};
  case 79: {_char = "1";};
  case 80: {_char = "2";};
  case 81: {_char = "3";};
  case 82: {_char = "0";};
  case 83: {_char = ".";};
  case 181: {_char = "/";};

  default {_char = "";};
};

if (_shift and _dikCode >= 16 and _dikCode <= 49) then {
  _char = toUpper _char;
};

_char;
