/*
* File : App Theme Notifier (Listener)
* Version : 1.0.0
* */


/// [ToolAppThemeNotifier] - notifies the app by giving the theme to the app

import 'dart:developer';

import 'package:flutter/material.dart';
import 'custom_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_theme.dart';

class ToolAppThemeNotifier extends ChangeNotifier {


  init() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    int fxAppThemeMode = sharedPreferences.getInt("fx_app_theme_mode")??ToolAppThemeType.light.index;
    changeAppThemeMode(ToolAppThemeType.values[fxAppThemeMode]);

    int ToolCustomThemeMode = sharedPreferences.getInt("fx_custom_theme_mode")??ToolAppThemeType.light.index;
    changeCustomThemeMode(ToolCustomThemeType.values[ToolCustomThemeMode]);

    notifyListeners();
  }

  changeAppThemeMode(ToolAppThemeType? themeType) async {
    FxAppTheme.defaultThemeType = themeType!;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setInt("fx_app_theme_mode", themeType.index);

    log(FxAppTheme.getThemeFromThemeMode().toString());
    notifyListeners();

  }

  changeCustomThemeMode(ToolCustomThemeType? themeType) async {
    ToolCustomTheme.defaultThemeType = themeType!;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setInt("fx_custom_theme_mode", themeType.index);

    notifyListeners();
  }

}