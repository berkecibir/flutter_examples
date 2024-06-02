// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/indicator_learn.dart';

import 'column_row_learn.dart';
import 'custom_widget_learn.dart';
import 'demos/note_demos_view.dart';
import 'demos/stack_demo_view.dart';
import 'stack_learn.dart';
import 'widget_learn_view/card_learn_view.dart';
import 'widget_learn_view/image_learn_view.dart';
import 'widget_learn_view/padding_learn_view.dart';
import 'widget_learn_view/stateless_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Examples',
      theme: ThemeData(
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: Colors.red),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const StackDemoViewLearn(),
    );
  }
}
