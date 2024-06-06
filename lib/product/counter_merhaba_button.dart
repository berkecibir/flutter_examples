import 'package:flutter/material.dart';
import 'package:flutter_application_1/product/language/language_items.dart';

class CounterMerhabaButton extends StatefulWidget {
  const CounterMerhabaButton({super.key});

  @override
  State<CounterMerhabaButton> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CounterMerhabaButton> {
  int _counterCustom = 0;
  final String _merhabaTitle = LanguageItems.welcomeTitle;

  void _updateCounter() {
    setState(() {
      ++_counterCustom;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          _updateCounter;
        },
        child: Text("$_merhabaTitle $_counterCustom"));
  }
}
