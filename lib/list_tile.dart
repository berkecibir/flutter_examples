import 'package:flutter/material.dart';

class ListTile extends StatelessWidget {
  const ListTile(
      {super.key,
      required Text title,
      required Text subTitle,
      required Icon leading,
      required Icon trailing});
  final imageUrl = "https://picsum.photos/200/300";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          ListTile(
              title: Text("My Card"),
              subTitle: Text("How do you use your card"),
              leading: Icon(Icons.money),
              trailing: Icon(Icons.chevron_right)),
        ],
      ),
    );
  }
}
