class HKX_Application: RscControlsGroupNoScrollbars {

  controlsBackground[] = { AppBackground };
  controls[] = { AppTitleBar, AppContent };

  class AppTitleBar {
    idc = 1;
    type = CT_STATIC;
    style = ST_SINGLE;
    moving = 1;
    colorBackground[] = COLOR_SOLID_GRAY;
    colorText[] = COLOR_SOLID_BLACK;
    font = "EtelkaMonospacePro";
    sizeEx = safezoneH * 0.015;
    lineSpacing = 1;
    text = "TextViewer";
    x = safeZoneX;
    y = safeZoneY;
    w = 0.2 * safeZoneW;
    h = 0.025 * safeZoneH;
  };

  class AppContent {
    idc = 2;
    type = CT_STATIC;
    style = ST_SINGLE;
    colorBackground[] = COLOR_TRANSPARENT;
		colorText[] = COLOR_GREEN;
    font = "EtelkaMonospacePro";
    sizeEx = safezoneH * 0.015;
		text = "";
		lineSpacing = 1;
    x = safeZoneX + 0.1 * safezoneH;
    y = safeZoneY;
    w = 0.2 * safeZoneW;
    h = 0.4 * safeZoneH;
  };

  class AppBackground {
    idc = -1;
    type = CT_STATIC;
    style = ST_SINGLE;
    colorBackground[] = COLOR_SOLID_BLACK;
    colorText[] = COLOR_TRANSPARENT;
    font = "EtelkaMonospacePro";
    sizeEx = 1;
    lineSpacing = 1;
    text = "";
    x = safeZoneX;
    y = safeZoneY + 0.025 * safeZoneH;
    w = 0.2 * safeZoneW;
    h = 0.5 * safeZoneH;
  };

}
