library tool;

import 'package:tool/core/logs/log.dart';
import 'package:tool/themes/app_theme_notifier.dart';

class Tool {
  // entry point of the package
  init() {
    ToolAppThemeNotifier().init();
  }

  static enableLog() {
    ToolLog.enable();
  }

  static disableLog() {
    ToolLog.disable();
  }
}
