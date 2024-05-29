import 'package:flutter/material.dart';

class ImageLearnView extends StatelessWidget {
  const ImageLearnView({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Image.asset(
              ImageItems.gsLogo,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  static const gsLogo = "assets/gs_logo.png.png";
}
