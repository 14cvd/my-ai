import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:my_ai/widget/custom_textfield_container.dart';

import '../widget/custom_bubble_three.dart';

class StreamTextView extends StatefulWidget {
  const StreamTextView({super.key});

  @override
  State<StreamTextView> createState() => _StreamTextViewState();
}

class _StreamTextViewState extends State<StreamTextView> {
  late final ImagePicker pikcer;
  late final TextEditingController controller;
  late final Gemini gemini;
  String? searchedText, finishReason;
  List<Uint8List>? images;
  bool _loading = false;

  bool get loading => _loading;

  set loading(bool set) => setState(() => _loading = set);
  final List<Content> chats = [];
  List<Widget> user = [];
  List<Widget> send = [];

  @override
  void initState() {
    super.initState();
    pikcer = ImagePicker();
    controller = TextEditingController();
    gemini = Gemini.instance;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
              child: chats.isNotEmpty
                  ? Align(
                      alignment: Alignment.bottomCenter,
                      child: loading
                          ? Lottie.asset("asset/animation/ai.json")
                          : SingleChildScrollView(
                              reverse: true,
                              child: ListView.builder(
                                itemBuilder: chatItem,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: chats.length,
                                reverse: false,
                              ),
                            ),
                    )
                  : const Center(child: Text('Search something!'))),
          CustomTextFieldContainer(
            controller: controller,
            onSend: () {
              if (controller.text.isNotEmpty) {
                final searchedText = controller.text;
                chats.add(Content(role: 'user', parts: [Parts(text: searchedText)]));
                controller.clear();
                loading = true;

                gemini.chat(chats).then((value) {
                  chats.add(Content(role: 'model', parts: [Parts(text: value?.output)]));
                  loading = false;
                });
              }
            },
          )
        ],
      ),
    );
  }

  Widget chatItem(BuildContext context, int index) {
    final Content content = chats[index];

    return SizedBox(
      child: content.role == "model"
          ? CustomBubbleWidget.send(text: content.parts?.lastOrNull?.text ?? 'cannot generate data!')
          : CustomBubbleWidget(
              text: content.parts?.lastOrNull?.text ?? 'cannot generate data!',
            ),
    );
  }
}
