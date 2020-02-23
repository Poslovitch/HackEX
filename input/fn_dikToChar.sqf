params["_dikCode","_shift","_control"];

private _char = "";

switch(_dikCode) do {
  // Special handling
  case 1: {_char = "@ESC";};
  case 14: {_char = "@BACKSPACE";};
  case 28: {_char = "@ENTER";};
  case 156: {_char = "@ENTER";};

  // Special characters
  case 2: {_char = "&";};
  case 3: {_char = "é";};
  case 4: {_char = "''";};
  case 5: {_char = "'";};
  case 6: {_char = "(";};
  case 7: {_char = "-";};
  case 8: {_char = "è";};
  case 9: {_char = "_";};
  case 10: {_char = "ç";};
  case 11: {_char = "à";};
  case 12: {_char = ")";};
  case 13: {_char = "=";};
  case 15: {_char = "    ";}; // Tab = 4 spaces
  case 26: {_char = "^";};
  case 27: {_char = "$";};
  case 40: {_char = "ù";};
  case 41: {_char = "²";};
  case 43: {_char = "*";};
  case 50: {_char = ",";};
  case 51: {_char = ";";};
  case 52: {_char = ":";};
  case 53: {_char = "!";};
  case 57: {_char = " ";};
  case 86: {_char = "<";};

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

_char;
