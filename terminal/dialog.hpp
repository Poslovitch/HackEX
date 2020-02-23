#define COLOR_GREEN {0.3, 0.6, 0.4, 0.9}
#define COLOR_HALF_BLACK { 0, 0, 0, 0.9 }
#define COLOR_TRANSPARENT { 0, 0, 0, 0 }
#define ST_MULTI 16
#define CT_STATIC 0

class Terminal {
  idd = 42001;
  movingEnable = false;
  name = "Terminal";
  controlsBackground[] = { TerminalBackground };
	controls[] = { TerminalText };

  class TerminalBackground {
    idc = -1;
    type = CT_STATIC;
    style = ST_MULTI;
    colorBackground[] = COLOR_HALF_BLACK;
    colorText[] = COLOR_TRANSPARENT;
    font = "EtelkaMonospacePro";
    sizeEx = 1;
    lineSpacing = 1;
    text = "";
    x = safezoneX + 0.1 * safezoneW;
    y = safezoneY + 0.1 * safezoneH;
    w = safezoneW * 0.8;
    h = safezoneH * 0.8;
  };

  class TerminalText {
    idc = 1;
    type = CT_STATIC;
    style = ST_MULTI;
		colorBackground[] = COLOR_TRANSPARENT;
		colorText[] = COLOR_GREEN;
    font = "EtelkaMonospacePro";
    sizeEx = safezoneH * 0.015;
		text = "";
		lineSpacing = 1;
    x = safezoneX + 0.11 * safezoneW;
    y = safezoneY + 0.11 * safezoneH;
    w = safezoneW * 0.85 - (0.07 * safezoneW);
    h = safezoneH * 0.85 - (0.07 * safezoneH);
  };
};
