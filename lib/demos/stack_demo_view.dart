import 'package:flutter/material.dart';

class StackDemoViewLearn extends StatelessWidget {
  const StackDemoViewLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                children: [Image.network(ProjectImage.imageUrl)],
              )),
          const Spacer(
            flex: 6,
          ),
        ],
      ),
    );
  }
}

class ProjectImage {
  static const imageUrl = "https;:picsum.photos/200/300";
}
