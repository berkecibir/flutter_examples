import 'package:flutter/material.dart';

class StatefulLifeCycle extends StatefulWidget {
  const StatefulLifeCycle({super.key, required this.message});
  final String message;

  @override
  State<StatefulLifeCycle> createState() => _StatefulLifeCycleState();
}

class _StatefulLifeCycleState extends State<StatefulLifeCycle> {
  String _message = "";
  late final bool _isOdd;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('c');
  }

  @override
  void didUpdateWidget(covariant StatefulLifeCycle oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('b');
  }

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
    print('a');
  }

  void _computeName() {
    if (_isOdd) {
      _message += ' Çift';
    } else {
      _message += ' Tek';
    }
  }

  @override
  void dispose() {
    super.dispose();
    _message = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_message),
        ),
        body: _isOdd
            ? TextButton(onPressed: () {}, child: Text(_message))
            : ElevatedButton(
                onPressed: () {},
                child: Text(_message),
              ));
  }
}
