import 'package:flutter/material.dart';
import 'package:my_ai/helper/theme/text_style/text_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: CustomTextStyle.textStyle2,
      controller: controller,
      minLines: 1,
      maxLines: 6,
      cursorColor: Theme.of(context).colorScheme.inversePrimary,
      textInputAction: TextInputAction.newline,
      keyboardType: TextInputType.multiline,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 4),
        hintText: 'Write ...',
        border: InputBorder.none,
      ),
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
    );
  }
}
