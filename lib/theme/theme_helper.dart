import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.gray90003,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray500,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyMedium: TextStyle(
          color: Color(0XFF7B6F72),
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: Color(0XFFFFFFFF),
          fontSize: 48.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        ),
        displaySmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 35.fSize,
          fontFamily: 'Alegreya',
          fontWeight: FontWeight.w500,
        ),
        headlineLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 30.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w800,
        ),
        headlineMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 27.fSize,
          fontFamily: 'Alegreya',
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 25.fSize,
          fontFamily: 'Alegreya',
          fontWeight: FontWeight.w500,
        ),
        labelLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 9.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 20.fSize,
          fontFamily: 'Alegreya Sans',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 14.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w800,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF54408C),
    primaryContainer: Color(0XFFF7F7F7),

    // Error colors
    onError: Color(0XFF736A66),

    // On colors(text colors)
    onPrimary: Color(0XFF21005D),
    onPrimaryContainer: Color(0XFF4E3321),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue200 => Color(0XFF9DCEFF);
  Color get blue600 => Color(0XFF227DDE);

  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray50 => Color(0XFFE8F3F1);
  Color get blueGray900 => Color(0XFF21214E);
  Color get blueGray90001 => Color(0XFF20204D);

  // DeepOrangef
  Color get deepOrange4003f => Color(0X3FFE814B);

  // DeepPurple
  Color get deepPurple100 => Color(0XFFC5BAEB);
  Color get deepPurple300 => Color(0XFF8A7BBF);
  Color get deepPurple50 => Color(0XFFEADDFF);
  Color get deepPurple5001 => Color(0XFFE9E5F6);
  Color get deepPurple900 => Color(0XFF0D0DA7);
  Color get deepPurpleA100 => Color(0XFFC58BF2);
  Color get deepPurpleA200 => Color(0XFF7248E7);

  // Gray
  Color get gray200 => Color(0XFFE5E7EB);
  Color get gray300 => Color(0XFFDEDEDE);
  Color get gray400 => Color(0XFFC9C7C5);
  Color get gray50 => Color(0XFFF7F8F8);
  Color get gray500 => Color(0XFFACA3A5);
  Color get gray50001 => Color(0XFFADADAD);
  Color get gray600 => Color(0XFF7B6F72);
  Color get gray700 => Color(0XFF555555);
  Color get gray900 => Color(0XFF181839);
  Color get gray90001 => Color(0XFF14142F);
  Color get gray90002 => Color(0XFF14142E);
  Color get gray90003 => Color(0XFF1A1A38);
  Color get gray90004 => Color(0XFF1D1517);
  Color get gray90011 => Color(0X111D1617);

  // Grayc
  Color get gray8000c => Color(0X0C4B3425);

  // Green
  Color get green500 => Color(0XFF41D641);
  Color get green700 => Color(0XFF458152);

  // Indigo
  Color get indigoA100 => Color(0XFF92A3FD);

  // IndigoAc
  Color get indigoA1004c => Color(0X4C95ADFE);

  // LightGreen
  Color get lightGreen400 => Color(0XFF9BB067);

  // LightGreenf
  Color get lightGreen4003f => Color(0X3F9BB068);

  // Lime
  Color get lime200 => Color(0XFFE9D894);

  // Orange
  Color get orange300 => Color(0XFFFFB842);

  // Pink
  Color get pink100 => Color(0XFFEEA4CE);
  Color get pinkA100 => Color(0XFFFF8DA8);

  // Red
  Color get red400 => Color(0XFFEB5569);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);

  // Yellow
  Color get yellow900 => Color(0XFFEC7D1C);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
