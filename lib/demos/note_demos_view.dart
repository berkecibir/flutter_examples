import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key, required String title});
  final _title = 'Create your first note';
  final _description = 'Add a note';
  final _createNote = 'Create a note';
  final _importNotes = 'Import Notes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.dark),
      body: Padding(
        padding: PaddingItems.horizantalPadding,
        child: Column(
          children: [
            Image.asset('assets/apple.png'),
            _TitleWidget(title: _title),
            _SubtitleWidget(
              title: _description * 10,
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () {},
                child: SizedBox(
                    height: ButtonHeights.buttonNormalHeight,
                    child: Center(
                        child: Text(
                      _createNote,
                      style: Theme.of(context).textTheme.headlineSmall,
                    )))),
            TextButton(onPressed: () {}, child: Text(_importNotes)),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

// Centered text widget

class _SubtitleWidget extends StatelessWidget {
  const _SubtitleWidget({
    super.key,
    this.textAlign = TextAlign.center,
    required this.title,
  });
  final TextAlign textAlign;

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingItems.verticalPadding,
      child: Text(
        title,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .subtitle1
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
      ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headlineMedium
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w600),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizantalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}
