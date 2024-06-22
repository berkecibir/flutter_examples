import 'package:flutter/material.dart';

class MyCollectionsDemo extends StatefulWidget {
  const MyCollectionsDemo({super.key});

  @override
  State<MyCollectionsDemo> createState() => _MyCollectionsDemoState();
}

class _MyCollectionsDemoState extends State<MyCollectionsDemo> {
  late final List<CollectionsModel> _item;

  @override
  void initState() {
    super.initState();
    _item = CollectionItems().item;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: PaddingUtility().paddingHorizantal,
        itemCount: _item.length,
        itemBuilder: (context, index) {
          return _CategoryCard(model: _item[index]);
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    super.key,
    required CollectionsModel model,
  }) : _model = model;

  final CollectionsModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: Padding(
        padding: PaddingUtility().paddingGeneral,
        child: Column(children: [
          Image.network(
            'https://picsum.photos/200',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: PaddingUtility().paddinTop,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(_model.title),
                Text('${_model.price} eth'),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class CollectionsModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionsModel(
      {required this.imagePath, required this.title, required this.price});
}

class CollectionItems {
  late final List<CollectionsModel> item;

  CollectionItems() {
    item = [
      CollectionsModel(
          imagePath: ProjectImage.imageCollection,
          title: 'Abstract Art',
          price: 3.4),
      CollectionsModel(
          imagePath: ProjectImage.imageCollection,
          title: 'Abstract Art2',
          price: 3.4),
      CollectionsModel(
          imagePath: ProjectImage.imageCollection,
          title: 'Abstract Art3',
          price: 3.4),
      CollectionsModel(
          imagePath: ProjectImage.imageCollection,
          title: 'Abstract Art4',
          price: 3.4),
    ];
  }
}

class PaddingUtility {
  final paddinTop = const EdgeInsets.only(top: 10);
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingGeneral = const EdgeInsets.all(20);
  final paddingHorizantal = const EdgeInsets.symmetric(horizontal: 20);
}

class ProjectImage {
  static const imageCollection = 'assets/png/image_collection.png';
}
