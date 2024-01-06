import 'package:flutter/material.dart';
import 'package:my_ai/helper/constant/color.dart';

import 'custom_textfield.dart';

class CustomTextFieldContainer extends StatelessWidget {
  const CustomTextFieldContainer({super.key  ,  required this.controller , required this.onSend});
  

   final TextEditingController controller;
   final void Function() onSend;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        color: AppColor.color6,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
          
            Expanded(
                child: CustomTextField(
              controller: controller,
            )),
            Padding(
              padding: const EdgeInsets.all(4),
              child: FloatingActionButton.small(
                onPressed: onSend,
                child: const Icon(Icons.send_rounded),
              ),
            )
          ],
        ),
      ),
    );
  }
}
