import 'package:devquiz/shared/constants/app_colors.dart';
import 'package:devquiz/shared/helpers/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  /// Init `theme light data` from application
  static final ThemeData light = ThemeData(
    appBarTheme: AppBarTheme(
      actionsIconTheme: IconThemeData(),
      brightness: Brightness.light,
      iconTheme: IconThemeData(),
      textTheme: TextTheme(),
    ),
    primaryColor: AppColors.purple,
    brightness: Brightness.light,
    primaryColorDark: AppColors.purple,
    primaryColorLight: AppColors.purple,
    accentColorBrightness: Brightness.light,
    // backgroundColor: background,
    buttonColor: AppColors.purple,
    backgroundColor: Color(0xFFF5F5FA),
    scaffoldBackgroundColor: Color(0xFFF5F5FA),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.purple,
      elevation: 0,
      focusElevation: 1,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      foregroundColor: Colors.white,
    ),
    accentColor: AppColors.purple,
    splashColor: AppColors.purple,
    cardColor: Colors.white,
    cardTheme: CardTheme(
      color: Colors.white,
    ),
    iconTheme: IconThemeData(),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: AppColors.white,
      elevation: 0,
    ),
    buttonTheme: ButtonThemeData(),
  );

  /// Init `theme dark data` from application
  static final ThemeData dark = ThemeData(
    appBarTheme: AppBarTheme(
      actionsIconTheme: IconThemeData(),
      brightness: Brightness.dark,
      color: AppColors.purple,
      iconTheme: IconThemeData(),
      textTheme: TextTheme(),
    ),
    primaryColor: AppColors.purple,
    primaryColorDark: AppColors.purple,
    primaryColorLight: AppColors.purple,
    accentColorBrightness: Brightness.dark,
    buttonColor: AppColors.purple,
    dividerColor: Colors.white30,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.purple,
      elevation: 0,
      focusElevation: 1,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      foregroundColor: Colors.white,
    ),
    accentColor: AppColors.purple,
    splashColor: AppColors.purple,
    cardColor: Colors.grey.shade900,
    cardTheme: CardTheme(
      color: Colors.grey.shade900,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      elevation: 0,
    ),
    iconTheme: IconThemeData(),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.purple,
    ),
  );

  static void changeStatusBar<T extends ThemeHelper>({
    SystemUiOverlayStyle? style,
    Color? backgroundColor,
  }) {
    if (T == Light) {
      return SystemChrome.setSystemUIOverlayStyle(
        style != null
            ? style.copyWith(
                systemNavigationBarIconBrightness: Brightness.dark,
                statusBarIconBrightness: Brightness.light,
                statusBarBrightness: Brightness.dark,
                statusBarColor: backgroundColor,
              )
            : SystemUiOverlayStyle.light.copyWith(
                statusBarColor: backgroundColor ?? Colors.transparent,
              ),
      );
    } else if (T == Dark) {
      return SystemChrome.setSystemUIOverlayStyle(
        style != null
            ? style.copyWith(
                systemNavigationBarIconBrightness: Brightness.light,
                statusBarIconBrightness: Brightness.dark,
                statusBarBrightness: Brightness.light,
                statusBarColor: backgroundColor,
              )
            : SystemUiOverlayStyle.dark.copyWith(
                statusBarColor: backgroundColor ?? Colors.transparent,
              ),
      );
    }

    return SystemChrome.setSystemUIOverlayStyle(
      style ??
          SystemUiOverlayStyle.dark.copyWith(
            statusBarColor: Colors.transparent,
          ),
    );
  }
}
