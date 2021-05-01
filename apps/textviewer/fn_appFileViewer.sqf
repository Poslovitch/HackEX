/*
   Setups the powerplant app.
   WIP. Might cause the GUI to disappear.
*/
params["_terminal"];

_myControl = (findDisplay 42001) ctrlCreate ["TextViewerHkxApp", 42201];
//createDialog "TextViewerHkxApp"; // Use a CT_CONTROLS_GROUP ? See how ACE Medical did their "submenu" thing
ctrlSetText [42102, "TextViewer"];
// Is it needed?
ctrlSetFocus _myControl;
{
    ctrlShow [_x, true];
    ctrlEnable [_x, true];
} forEach [-99, 42001, 42102, 42103];
// TODO : password pour ouvrir fichier
