import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_ai/helper/constant/string.dart';
import 'package:my_ai/helper/theme/theme.dart';
import 'package:my_ai/view/main_view.dart';

void main() {
  Gemini.init(apiKey: AppString.apiKey, enableDebugging: true);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My-AI',
      theme: AppTheme.theme,
      home: const MainView(),
    );
  }
}
