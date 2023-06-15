import 'package:flutter/material.dart';

class Selectable extends StatefulWidget {
  const Selectable({super.key});

  @override
  State<Selectable> createState() => _SelectableState();
}

class _SelectableState extends State<Selectable> {
  String selectedText = '';
  final String _SelectableText = 'This is selectable Text';
  final TextStyle _styleBlue = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  );
  final TextStyle _style = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectedText,
              style: _styleBlue,
            ),
            const SizedBox(
              height: 30,
            ),
            TextSelectionTheme(
              data: const TextSelectionThemeData(selectionColor: Colors.amber),
              child: SelectableText(
                _SelectableText,
                style: _style,
                onSelectionChanged: (selection, cause) => setState(() {
                  selectedText = _SelectableText.substring(
                    selection.start,
                    selection.end,
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
