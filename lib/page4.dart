import 'package:flutter/material.dart';

class DataTablePage extends StatelessWidget {
  const DataTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: Container(
        width: double.infinity,
        child: DataTable(
          columns: const [
            DataColumn(
              label: Expanded(
                child: Text("Name"),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text("Age"),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text("Role"),
              ),
            ),
          ],
          rows: const [
            DataRow(
              cells: [
                DataCell(Text("babin")),
                DataCell(Text("23")),
                DataCell(Text("Student")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text("shastika")),
                DataCell(Text("23")),
                DataCell(Text("Student")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text("suraj")),
                DataCell(Text("35")),
                DataCell(Text("professor")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
