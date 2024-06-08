import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();
  final key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 7),
        child: Column(
          children: [
            TextField(
                maxLength: 20,
                buildCounter: (context,
                    {int? currentLength, bool? isFocused, int? maxLength}) {
                  return _animatedContainer(currentLength);
                },
                keyboardType: TextInputType.emailAddress,
                focusNode: focusNodeTextFieldOne,
                autofillHints: const [AutofillHints.email],
                inputFormatters: [TextProjectInputFormatter()._formatter],
                textInputAction: TextInputAction.next,
                decoration: _inputDecarator().emailInput),
            TextFormField(
              focusNode: focusNodeTextFieldTwo,
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      color: Colors.green[100 * (currentLength ?? 0) ~/ 2],
      height: 20,
      width: 10.0 * (currentLength ?? 0),
      duration: const Duration(seconds: 1),
      key: GlobalKey(),
    );
  }
}

class TextProjectInputFormatter {
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text == 'a') {
      return oldValue;
    }
    return oldValue;
  });
}

class _inputDecarator {
  final emailInput = InputDecoration(
    prefixIcon: const Icon(Icons.mail),
    border: const OutlineInputBorder(),
    labelText: "Mail",
    fillColor: Colors.grey[50],
    filled: true,
  );
}
