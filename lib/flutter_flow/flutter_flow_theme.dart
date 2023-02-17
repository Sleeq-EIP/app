// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

enum DeviceSize {
  mobile,
  tablet,
  desktop,
}

abstract class FlutterFlowTheme {
  static DeviceSize deviceSize = DeviceSize.mobile;

  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    deviceSize = getDeviceSize(context);
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  late Color primaryColor;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;

  late Color customColor1;
  late Color primaryBtnText;
  late Color lineColor;
  late Color primary20;
  late Color secondary20;
  late Color tertiary20;
  late Color alternate20;
  late Color overlay;
  late Color overlay0;
  late Color overlay30;
  late Color alternateTwo;
  late Color alternateTwo20;
  late Color btnText;
  late Color customColor3;
  late Color customColor4;
  late Color white;
  late Color background;
  late Color backgroundComponents;
  late Color primary600;
  late Color secondary600;
  late Color tertiary600;
  late Color darkBGstatic;
  late Color secondary30;
  late Color primary30;
  late Color grayIcon;
  late Color gray200;
  late Color gray600;
  late Color black600;
  late Color tertiary400;
  late Color textColor;
  late Color primaryBtnTextOld;
  late Color lineColorOld;
  late Color selectorLightPink;
  late Color selectorDeepChampagne;
  late Color selectorLemonYellowCrayola;
  late Color selectorTeaGreen;
  late Color selectorElectricBlue;
  late Color selectorBabyBlueEyes;
  late Color selectorMaximumBluePurple;
  late Color selectorMauve;

  String get title1Family => typography.title1Family;
  TextStyle get title1 => typography.title1;
  String get title2Family => typography.title2Family;
  TextStyle get title2 => typography.title2;
  String get title3Family => typography.title3Family;
  TextStyle get title3 => typography.title3;
  String get subtitle1Family => typography.subtitle1Family;
  TextStyle get subtitle1 => typography.subtitle1;
  String get subtitle2Family => typography.subtitle2Family;
  TextStyle get subtitle2 => typography.subtitle2;
  String get bodyText1Family => typography.bodyText1Family;
  TextStyle get bodyText1 => typography.bodyText1;
  String get bodyText2Family => typography.bodyText2Family;
  TextStyle get bodyText2 => typography.bodyText2;

  Typography get typography => {
        DeviceSize.mobile: MobileTypography(this),
        DeviceSize.tablet: TabletTypography(this),
        DeviceSize.desktop: DesktopTypography(this),
      }[deviceSize]!;
}

DeviceSize getDeviceSize(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  if (width < 479) {
    return DeviceSize.mobile;
  } else if (width < 991) {
    return DeviceSize.tablet;
  } else {
    return DeviceSize.desktop;
  }
}

class LightModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFF0299FF);
  late Color secondaryColor = const Color(0xFFBA695A);
  late Color tertiaryColor = const Color(0xFFE08E7F);
  late Color alternate = const Color(0xFFE3E7ED);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color primaryText = const Color(0xFF14181B);
  late Color secondaryText = const Color(0xFF95A1AC);

  late Color customColor1 = Color(0xFF2FB73C);
  late Color primaryBtnText = Color(0xFFFFFFFF);
  late Color lineColor = Color(0xFFE0E3E7);
  late Color primary20 = Color(0x33897DEE);
  late Color secondary20 = Color(0x3331BFAE);
  late Color tertiary20 = Color(0x33F3A743);
  late Color alternate20 = Color(0x34FF5963);
  late Color overlay = Color(0xB3FFFFFF);
  late Color overlay0 = Color(0x00FFFFFF);
  late Color overlay30 = Color(0x4CFFFFFF);
  late Color alternateTwo = Color(0xFF3A5FFF);
  late Color alternateTwo20 = Color(0x343A5FFF);
  late Color btnText = Color(0xFFFFFFFF);
  late Color customColor3 = Color(0xFFDF3F3F);
  late Color customColor4 = Color(0xFF090F13);
  late Color white = Color(0xFFFFFFFF);
  late Color background = Color(0xFF1D2429);
  late Color backgroundComponents = Color(0xFF1D2428);
  late Color primary600 = Color(0xFF336A4A);
  late Color secondary600 = Color(0xFF6D604A);
  late Color tertiary600 = Color(0xFF0C2533);
  late Color darkBGstatic = Color(0xFF0D1E23);
  late Color secondary30 = Color(0x4D928163);
  late Color primary30 = Color(0x4D4B986C);
  late Color grayIcon = Color(0xFF95A1AC);
  late Color gray200 = Color(0xFFDBE2E7);
  late Color gray600 = Color(0xFF262D34);
  late Color black600 = Color(0xFF090F13);
  late Color tertiary400 = Color(0xFF39D2C0);
  late Color textColor = Color(0xFF1E2429);
  late Color primaryBtnTextOld = Color(0xFFFFFFFF);
  late Color lineColorOld = Color(0xFFE0E3E7);
  late Color selectorLightPink = Color(0xFFFFADAD);
  late Color selectorDeepChampagne = Color(0xFFFFD6A5);
  late Color selectorLemonYellowCrayola = Color(0xFFFDFFB6);
  late Color selectorTeaGreen = Color(0xFFCAFFBF);
  late Color selectorElectricBlue = Color(0xFF9BF6FF);
  late Color selectorBabyBlueEyes = Color(0xFFA0C4FF);
  late Color selectorMaximumBluePurple = Color(0xFFBDB2FF);
  late Color selectorMauve = Color(0xFFFFC6FF);
}

abstract class Typography {
  String get title1Family;
  TextStyle get title1;
  String get title2Family;
  TextStyle get title2;
  String get title3Family;
  TextStyle get title3;
  String get subtitle1Family;
  TextStyle get subtitle1;
  String get subtitle2Family;
  TextStyle get subtitle2;
  String get bodyText1Family;
  TextStyle get bodyText1;
  String get bodyText2Family;
  TextStyle get bodyText2;
}

class MobileTypography extends Typography {
  MobileTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Lexend';
  TextStyle get title1 => GoogleFonts.getFont(
        'Lexend',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 34,
      );
  String get title2Family => 'Lexend';
  TextStyle get title2 => GoogleFonts.getFont(
        'Lexend',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 28,
      );
  String get title3Family => 'Lexend';
  TextStyle get title3 => GoogleFonts.getFont(
        'Lexend',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
  String get subtitle1Family => 'Lexend';
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Lexend',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      );
  String get subtitle2Family => 'DM Sans';
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'DM Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );
  String get bodyText1Family => 'DM Sans';
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'DM Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  String get bodyText2Family => 'DM Sans';
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'DM Sans',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
}

class TabletTypography extends Typography {
  TabletTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Lexend';
  TextStyle get title1 => GoogleFonts.getFont(
        'Lexend',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 34,
      );
  String get title2Family => 'Lexend';
  TextStyle get title2 => GoogleFonts.getFont(
        'Lexend',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 28,
      );
  String get title3Family => 'Lexend';
  TextStyle get title3 => GoogleFonts.getFont(
        'Lexend',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
  String get subtitle1Family => 'Lexend';
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Lexend',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      );
  String get subtitle2Family => 'DM Sans';
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'DM Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );
  String get bodyText1Family => 'DM Sans';
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'DM Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  String get bodyText2Family => 'DM Sans';
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'DM Sans',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
}

class DesktopTypography extends Typography {
  DesktopTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Lexend';
  TextStyle get title1 => GoogleFonts.getFont(
        'Lexend',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 34,
      );
  String get title2Family => 'Lexend';
  TextStyle get title2 => GoogleFonts.getFont(
        'Lexend',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 28,
      );
  String get title3Family => 'Lexend';
  TextStyle get title3 => GoogleFonts.getFont(
        'Lexend',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
  String get subtitle1Family => 'Lexend';
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Lexend',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      );
  String get subtitle2Family => 'DM Sans';
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'DM Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );
  String get bodyText1Family => 'DM Sans';
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'DM Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  String get bodyText2Family => 'DM Sans';
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'DM Sans',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFFE08E7F);
  late Color secondaryColor = const Color(0xFFBA695A);
  late Color tertiaryColor = const Color(0xFF0299FF);
  late Color alternate = const Color(0xFF262D34);
  late Color primaryBackground = const Color(0xFF1A1F24);
  late Color secondaryBackground = const Color(0xFF0F1316);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFFA5B0BE);

  late Color customColor1 = Color(0xFF452FB7);
  late Color primaryBtnText = Color(0xFFFFFFFF);
  late Color lineColor = Color(0xFF22282F);
  late Color primary20 = Color(0x33897DEE);
  late Color secondary20 = Color(0x3331BFAE);
  late Color tertiary20 = Color(0x33F3A743);
  late Color alternate20 = Color(0x34FF5963);
  late Color overlay = Color(0x9818171E);
  late Color overlay0 = Color(0x0023202E);
  late Color overlay30 = Color(0x4C23202E);
  late Color alternateTwo = Color(0xFF3A5FFF);
  late Color alternateTwo20 = Color(0x343A5FFF);
  late Color btnText = Color(0xFFFFFFFF);
  late Color customColor3 = Color(0xFFDF3F3F);
  late Color customColor4 = Color(0xFF090F13);
  late Color white = Color(0xFFFFFFFF);
  late Color background = Color(0xFF1D2429);
  late Color backgroundComponents = Color(0xFF1D2428);
  late Color primary600 = Color(0xFF336A4A);
  late Color secondary600 = Color(0xFF6D604A);
  late Color tertiary600 = Color(0xFF0C2533);
  late Color darkBGstatic = Color(0xFF0D1E23);
  late Color secondary30 = Color(0x4D928163);
  late Color primary30 = Color(0x4D4B986C);
  late Color grayIcon = Color(0xFF95A1AC);
  late Color gray200 = Color(0xFFDBE2E7);
  late Color gray600 = Color(0xFF262D34);
  late Color black600 = Color(0xFF090F13);
  late Color tertiary400 = Color(0xFF39D2C0);
  late Color textColor = Color(0xFF1E2429);
  late Color primaryBtnTextOld = Color(0xFFFFFFFF);
  late Color lineColorOld = Color(0xFF22282F);
  late Color selectorLightPink = Color(0xFFFFADAD);
  late Color selectorDeepChampagne = Color(0xFFFFD6A5);
  late Color selectorLemonYellowCrayola = Color(0xFFFDFFB6);
  late Color selectorTeaGreen = Color(0xFFCAFFBF);
  late Color selectorElectricBlue = Color(0xFF9BF6FF);
  late Color selectorBabyBlueEyes = Color(0xFFA0C4FF);
  late Color selectorMaximumBluePurple = Color(0xFFBDB2FF);
  late Color selectorMauve = Color(0xFFFFC6FF);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
