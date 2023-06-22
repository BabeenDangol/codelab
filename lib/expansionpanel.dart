import 'package:flutter/material.dart';

class Item {
  final String header;
  final String body;
  bool isExpanded;

  Item({
    required this.header,
    required this.body,
    this.isExpanded = false,
  });
}

class ExpansionPanelScreen extends StatefulWidget {
  const ExpansionPanelScreen({super.key});

  @override
  State<ExpansionPanelScreen> createState() => _ExpansionPanelScreenState();
}

class _ExpansionPanelScreenState extends State<ExpansionPanelScreen> {
  List<Item> items = [
    Item(header: "Item 1", body: "This Is Item 1"),
    Item(header: "Item 2", body: "This Is Item 2"),
    Item(header: "Item 2", body: "This Is Item 2"),
    Item(header: "Item 2", body: "This Is Item 2"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionPanel"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  items[index].isExpanded = !items[index].isExpanded;
                });
              },
              children: items.map((Item item) {
                return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(
                      title: Text(item.header),
                    );
                  },
                  body: ListTile(
                    title: Text(item.body),
                    subtitle: const Text(
                        'To delete this panel, tap the trash can icon'),
                  ),
                  isExpanded: item.isExpanded,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
