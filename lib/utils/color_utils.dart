import 'package:flutter/material.dart';

class FxColorUtils {
  //list color for any color list widget  
  static List<Color> getColorByRating() {
    return [
      const Color(0xfff0323c), //For 0 star color
      const Color(0xfff0323c), //For 1 star color
      const Color(0xfff0323c).withAlpha(200), //For 2 star color
      const Color(0xfff9c700), //For 3 star color
      const Color(0xff3cd278).withAlpha(200), //For 4 star color
      const Color(0xff3cd278) //For 5 star color
    ];
  }
}
