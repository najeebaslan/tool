

/// [FxLog] - provides a way to print anything in the console-

import 'dart:developer';

class ToolLog{

  static bool _enabled = true;

  ToolLog(dynamic message){
    if(_enabled)
      log(message.toString());
  }

  static enable(){
    _enabled = true;
  }

  static disable(){
    _enabled = false;
  }

  static isEnabled(){
    return _enabled;
  }




}