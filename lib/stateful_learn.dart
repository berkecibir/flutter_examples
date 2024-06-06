import 'package:flutter/material.dart';
import 'package:flutter_application_1/product/counter_merhaba_button.dart';
import 'package:flutter_application_1/product/language/language_items.dart';

class StatefulLearnView extends StatefulWidget {
  const StatefulLearnView({super.key});
//dışarısıyla konuşuyoruz
  @override
  State<StatefulLearnView> createState() => _StatefulLearnViewState();
}
//dışarısıyla konuşuyoruz

class _StatefulLearnViewState extends State<StatefulLearnView> {
//asıl işlemleri gösteren yerdir

  int _countValue = 0;

  int _counterCustom = 0;

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue = _countValue + 1;
    } else {
      _countValue = _countValue - 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LanguageItems.welcomeTitle),
        centerTitle: true,
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deincrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            _countValue.toString(),
            style: Theme.of(context).textTheme.headlineMedium,
          )),
          const Placeholder(),
          const CounterMerhabaButton(),
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    print('Burada');
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }

  Padding _deincrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
