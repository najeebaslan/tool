library tool;

import 'package:tool/core/logs/log.dart';
import 'package:tool/themes/app_theme_notifier.dart';

class tool {
  // entry point of the package
  init() {
    FxAppThemeNotifier().init();
  }

  static enableLog() {
    FxLog.enable();
  }

  static disableLog() {
    FxLog.disable();
  }
}
