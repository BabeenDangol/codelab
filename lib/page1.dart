import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

enum Program { BCIS, BBA, BBA_TT }

class _ProfilePageState extends State<ProfilePage> {
  String dropdownvalue = "Male";
  Program program = Program.BCIS;
  var values = ["Male", "Female"];
  onSubmit() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Success"),
        content: Text("Save Succefully "),
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("OK")),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancle"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            const Divider(
              height: 50,
              thickness: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.contact_mail),
                hintText: "Contact",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              height: 50,
              thickness: 10,
            ),
            DropdownButton(
              dropdownColor: Colors.amber[100],
              elevation: 15,
              isExpanded: true,
              borderRadius: BorderRadius.circular(20),
              value: dropdownvalue,
              items: values.map((String values) {
                return DropdownMenuItem(
                  value: values,
                  child: Text(values),
                );
              }).toList(),
              onChanged: (String? newvalue) {
                setState(() {
                  dropdownvalue = newvalue!;
                });
              },
            ),
            const Divider(
              height: 50,
              thickness: 10,
            ),
            RadioListTile(
              title: Text("BCIS"),
              value: Program.BCIS,
              groupValue: program,
              onChanged: (Program? newvalues) {
                setState(() {
                  program = newvalues!;
                });
              },
            ),
            RadioListTile(
              title: Text("BBA"),
              value: Program.BBA,
              groupValue: program,
              onChanged: (Program? newvalues) {
                setState(() {
                  program = newvalues!;
                });
              },
            ),
            RadioListTile(
              title: Text("BBA-TT"),
              value: Program.BBA_TT,
              groupValue: program,
              onChanged: (Program? newvalues) {
                setState(() {
                  program = newvalues!;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: onSubmit, child: Text("Submit")),
                ElevatedButton(onPressed: () {}, child: Text("Cancle")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
