import 'package:flutter/material.dart';
import 'package:my_ai/view/stream_text.dart';

import '../widget/custom_appbar.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBarWidget(),
      body: StreamTextView(),
    );
  }
}
