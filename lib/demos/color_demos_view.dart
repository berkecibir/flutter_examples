//bir ekran olacak
// bu ekranda 3 buton ve bunlara basınca renk değişecek
//seçili olan button selected icon olsun

import 'package:flutter/material.dart';

class ColorDemosLearn extends StatefulWidget {
  const ColorDemosLearn({super.key});

  @override
  State<ColorDemosLearn> createState() => _ColorDemosLearnState();
}

class _ColorDemosLearnState extends State<ColorDemosLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {},
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
        ],
      ),
    );
  }
}

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
