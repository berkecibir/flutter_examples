import 'package:flutter/material.dart';

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
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deincrementButton(),
        ],
      ),
      body: Center(
          child: Text(
        _countValue.toString(),
        style: Theme.of(context).textTheme.headlineMedium,
      )),
    );
  }

  FloatingActionButton _incrementButton() {
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
