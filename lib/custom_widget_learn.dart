import 'package:flutter/material.dart';

class CustomWidgetLearnView extends StatelessWidget {
  const CustomWidgetLearnView({
    super.key,
  });
  final String title = "Food";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CustomFoodButton(
                    title,
                    onPressed: () {},
                  )),
            )),
            const SizedBox(
              height: 100,
            ),
            CustomFoodButton(
              title,
              onPressed: () {},
            ),
          ],
        ));
  }
}

mixin _ColorsUtiliy {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

mixin _PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(16.0);
}

class CustomFoodButton extends StatelessWidget
    with _ColorsUtiliy, _PaddingUtility {
  CustomFoodButton(String title, {super.key, required this.onPressed});
  final String title = "Food";
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(), backgroundColor: redColor),
        onPressed: onPressed,
        child: Padding(
          padding: normalPadding,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: whiteColor, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
