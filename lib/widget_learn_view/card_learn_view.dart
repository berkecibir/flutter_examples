import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Card(
            color: Colors.black,
            margin: ProjectMargins.cardMargin,
            shape: StadiumBorder(),
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(
                  child: Text(
                "This is a text",
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
          Card(
            color: Theme.of(context).colorScheme.error,
            child: const SizedBox(
              height: 100,
              width: 100,
            ),
          ),
          Card(
            color: Theme.of(context).colorScheme.inversePrimary,
            shape: const CircleBorder(),
            child: const SizedBox(
              height: 100,
              width: 100,
            ),
          ),
          Card(
            color: Theme.of(context).colorScheme.onSurface,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const SizedBox(
              height: 100,
              width: 100,
            ),
          ),
          _CustomCards(
            child: const SizedBox(
              height: 100,
              width: 100,
            ),
          )
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}

class _CustomCards extends StatelessWidget {
  final Widget child;
  final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  _CustomCards({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.onSurface,
      shape: roundedRectangleBorder,
      child: child,
    );
  }
}

// Borders
//StadiumBorder(), CircleBorder(), RoundedRectangleBorder(),