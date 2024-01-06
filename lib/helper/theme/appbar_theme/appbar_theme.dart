import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_ai/helper/constant/color.dart';

class CustomAppBarTheme with Diagnosticable {
  static const AppBarTheme appBarTheme = AppBarTheme(
    elevation: 0,
    color: AppColor.color6,
    shape: RoundedRectangleBorder(
      
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
    ),
  );
}
