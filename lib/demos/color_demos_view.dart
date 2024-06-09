//bir ekran olacak
// bu ekranda 3 buton ve bunlara basınca renk değişecek
//seçili olan button selected icon olsun

import 'package:flutter/material.dart';

class ColorDemosLearn extends StatefulWidget {
  const ColorDemosLearn({super.key, required this.initialColor});
  final Color? initialColor;

  @override
  State<ColorDemosLearn> createState() => _ColorDemosLearnState();
}

class _ColorDemosLearnState extends State<ColorDemosLearn> {
  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemosLearn oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.initialColor != _backgroundColor &&
        widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  Color? _backgroundColor = Colors.transparent;
  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _colorOnTap,
        items: const [
          BottomNavigationBarItem(
              icon: _ColorContainer(
                color: Colors.red,
              ),
              label: 'Red'),
          BottomNavigationBarItem(
              icon: _ColorContainer(
                color: Colors.yellow,
              ),
              label: 'Yellow'),
          BottomNavigationBarItem(
              icon: _ColorContainer(
                color: Colors.blue,
              ),
              label: 'Blue'),
        ],
      ),
    );
  }

  void _colorOnTap(int value) {
    if (value == _MyColors.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      changeBackgroundColor(Colors.yellow);
    } else if (value == _MyColors.blue.index) {
      changeBackgroundColor(Colors.blue);
    }
  }
}

enum _MyColors { red, yellow, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    super.key,
    required this.color,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
