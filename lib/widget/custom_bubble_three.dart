import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:my_ai/helper/theme/text_style/text_style.dart';

import '../helper/constant/color.dart';

class CustomBubbleWidget extends StatelessWidget {
  const CustomBubbleWidget(
      {super.key,
      required this.text,
      this.chatColor = AppColor.color2,
      this.isSender = true});
  const CustomBubbleWidget.send(
      {super.key,
      required this.text,
      this.chatColor = AppColor.color4,
      this.isSender = false});
  final String text;
  final Color chatColor;
  final bool isSender;

  @override
  Widget build(BuildContext context) {
    return BubbleSpecialThree(
      text: text,
      color: chatColor,
      isSender: isSender,
      tail: false,
      textStyle: CustomTextStyle.chatBubbleStyle,
    );
  }
}
