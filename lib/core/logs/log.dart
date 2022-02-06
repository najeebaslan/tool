

/// [FxLog] - provides a way to print anything in the console-

import 'dart:developer';

class FxLog{

  static bool _enabled = true;

  FxLog(dynamic message){
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