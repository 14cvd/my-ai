import 'package:flutter/material.dart';
import 'package:my_ai/helper/constant/color.dart';
import 'package:my_ai/helper/constant/string.dart';

sealed class CustomTextStyle {
  static const TextStyle textStyle1 = TextStyle(
    color: AppColor.textColor,
    fontFamily: AppString.fontFamily,
    fontSize: 24,
  );

  static const TextStyle textStyle2 = TextStyle(
    color: AppColor.textColor,
    fontFamily: AppString.fontFamily,
    fontSize: 16,
  );

  static const TextStyle chatBubbleStyle = TextStyle(
      fontFamily: AppString.fontFamily,
      fontSize: 16,
      color: AppColor.textColor);



}
