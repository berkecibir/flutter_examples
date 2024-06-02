import 'package:flutter/material.dart';

class ColumnRowLearnView extends StatelessWidget {
  const ColumnRowLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.amber,
                      ),
                    ),
                  ],
                )),
            const Spacer(
              flex: 2,
            ),
            const Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("a"),
                    Text("a2"),
                    Text("a3"),
                  ],
                )),
            Container(
              height: ProjectContainerSizes.cardHeight,
              child: const Column(
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 50,
                      child: Text("data"),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: Text("data"),
                  ),
                  SizedBox(
                    width: 50,
                    child: Text("data"),
                  ),
                  SizedBox(
                    width: 50,
                    child: Text("data"),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class ProjectContainerSizes {
  static const double cardHeight = 200;
}
