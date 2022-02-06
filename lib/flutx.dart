library flutx;

import 'package:flutx/core/logs/log.dart';
import 'package:flutx/themes/app_theme_notifier.dart';



class FlutX {

  // entry point of the package
  init(){
    FxAppThemeNotifier().init();
  }

  static enableLog(){
    FxLog.enable();
  }

  static disableLog(){
    FxLog.disable();
  }


}
