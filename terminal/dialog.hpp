#include "..\dialogDefines.hpp"

class Terminal {
  idd = 42001;
  movingEnable = false;
  name = "Terminal";
  controlsBackground[] = { TerminalBackground };
	controls[] = { TerminalText, TerminalInput, TerminalButtonsBackground };

  class TerminalBackground {
    idc = -1;
    type = CT_STATIC;
    style = ST_MULTI;
    colorBackground[] = COLOR_SOLID_BLACK;
    colorText[] = COLOR_TRANSPARENT;
    font = "EtelkaMonospacePro";
    sizeEx = 1;
    lineSpacing = 1;
    text = "";
    x = safeZoneX;
    y = safeZoneY;
    w = safeZoneW;
    h = safeZoneH;
  };

  class TerminalText {
    idc = 1;
    type = CT_STATIC;
    style = ST_MULTI + ST_NO_RECT;
		colorBackground[] = COLOR_TRANSPARENT;
		colorText[] = COLOR_GREEN;
    font = "EtelkaMonospacePro";
    sizeEx = safezoneH * 0.015;
		text = "";
		lineSpacing = 1;
    x = safezoneX + 0.11 * safezoneW;
    y = safezoneY + 0.11 * safezoneH;
    w = safezoneW * 0.78;
    h = safezoneH * 0.73;
  };

  class TerminalInput {
    idc = 2;
    type = CT_STATIC;
    style = ST_SINGLE;
		colorBackground[] = COLOR_TRANSPARENT;
		colorText[] = COLOR_GREEN;
    font = "EtelkaMonospacePro";
    sizeEx = safezoneH * 0.015;
		text = "";
		lineSpacing = 1;
    x = safezoneX + 0.11 * safezoneW;
    y = safezoneY + (0.11 + 0.73 + 0.01) * safezoneH;
    w = safezoneW * 0.78;
    h = safezoneH * 0.02;
  };

  class TerminalButtonsBackground {
    idc = -1;
    type = CT_STATIC;
    style = ST_MULTI;
    colorBackground[] = COLOR_SOLID_GRAY;
    colorText[] = COLOR_TRANSPARENT;
    font = "EtelkaMonospacePro";
    sizeEx = 1;
    lineSpacing = 1;
    text = "";
    x = safezoneX + 0.1 * safezoneW;
    y = safezoneY + (0.1 + 0.8) * safezoneH;
    w = safezoneW * 0.8;
    h = safezoneH * 0.02;
  }
};
