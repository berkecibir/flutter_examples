import 'package:flutter/material.dart';

class StatelessLearnView extends StatelessWidget {
  const StatelessLearnView({super.key, required String title});
  final String text = "Berke2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const TitleTextWidget(text: "Berke"),
          _emptyBox(),
          TitleTextWidget(text: text),
          _emptyBox(),
          const TitleTextWidget(text: "Berke3"),
          const _CustomContainer(),
          _emptyBox(),
        ],
      ),
    );
  }

  SizedBox _emptyBox() {
    return const SizedBox(
      height: 10,
    );
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.red,
    ));
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
