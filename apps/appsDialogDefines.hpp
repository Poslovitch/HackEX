class HKX_Application: RscControlsGroupNoScrollbars {
  idc = 42101;
  x = safeZoneX;
  y = safeZoneY;
  w = 0.2 * safeZoneW;
  h = (0.025 + 0.5) * safeZoneH;

  class controls {
    class AppTitleBar {
      idc = 42102;
      type = CT_STATIC;
      style = ST_SINGLE;
      moving = 1;
      colorBackground[] = COLOR_SOLID_GRAY;
      colorText[] = COLOR_SOLID_BLACK;
      font = "EtelkaMonospacePro";
      sizeEx = safezoneH * 0.015;
      lineSpacing = 1;
      text = "";
      x = 0;
      y = 0;
      w = 0.2 * safeZoneW;
      h = 0.025 * safeZoneH;
    };

    class ExitButton {
      idc = 42104;
      type = CT_BUTTON;
      style = ST_CENTER;
      colorBackground[] = {1, 0, 0, 1};
      colorBackgroundActive[] = {1, 0, 1, 1};
      colorText[] = COLOR_SOLID_BLACK;
      font = "EtelkaMonospacePro";
      sizeEx = safezoneH * 0.015;
      lineSpacing = 1;
      text = "X";
      x = (0.2 - 0.025) * safeZoneW;
      y = 0;
      w = 0.025 * safeZoneW;
      h = 0.025 * safeZoneH;
      onButtonClick = "hint ""Close the TextViewer""";
    };

    class AppBackground {
      idc = -99;
      type = CT_STATIC;
      style = ST_SINGLE;
      colorBackground[] = {1, 0, 0, 1};
      colorText[] = COLOR_TRANSPARENT;
      font = "EtelkaMonospacePro";
      sizeEx = 1;
      lineSpacing = 1;
      text = "";
      x = 0;
      y = 0.025 * safeZoneH;
      w = 0.2 * safeZoneW;
      h = 0.5 * safeZoneH;
    };

    class AppContent {
      idc = 42103;
      type = CT_STATIC;
      style = ST_SINGLE;
      colorBackground[] = COLOR_TRANSPARENT;
  		colorText[] = COLOR_GREEN;
      font = "EtelkaMonospacePro";
      sizeEx = safezoneH * 0.015;
  		text = "azdazdazd";
  		lineSpacing = 1;
      x = 0;
      y = 0.1 * safeZoneH;
      w = 0.2 * safeZoneW;
      h = 0.4 * safeZoneH;
    };
  };
}
