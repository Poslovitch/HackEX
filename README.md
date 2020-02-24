# HackEx version 0.0.4-dev

## Installation

Ajouter au description.ext :
```
#include "HackEX\terminal\dialog.hpp"

class CfgFunctions {
  #include "HackEX\HKX_cfgFunctions.hpp"
}
```

Insérer un objet "ordinateur portable" avec nom de variable "terminal"

Ajouter à l'`init.sqf`:
`[terminal] execVM "HackEX\hackex.sqf";`
