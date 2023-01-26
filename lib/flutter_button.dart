// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class FlutterButton extends StatefulWidget {
  const FlutterButton({Key? key}) : super(key: key);

  @override
  State<FlutterButton> createState() => _FlutterButtonState();
}

class _FlutterButtonState extends State<FlutterButton> {
  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  int _volume = 0;

  Choice _selectedOption = choices[0];

  void _select(Choice choice) {
    setState(() {
      _selectedOption = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        PopupMenuButton<Choice>(
          onSelected: _select,
          itemBuilder: (BuildContext context) {
            return choices.skip(0).map((Choice choice) {
              return PopupMenuItem<Choice>(
                value: choice,
                child: Text(choice.name),
              );
            }).toList();
          },
        ),
      ]),
      body: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // FlatButton(
            //   splashColor: Colors.pink,
            //   color: Colors.blueGrey,
            //   textColor: Colors.white,
            //   minWidth: MediaQuery.of(context).size.width / 2,
            //   height: 45,
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10)),
            //   child: const Text(
            //     'Flat Button',
            //   ),
            //   onPressed: () {},
            // ),
            // const SizedBox(height: 50),
            // RaisedButton(
            //   child: const Text(
            //     "Raised Button",
            //     style: TextStyle(fontSize: 17),
            //   ),
            //   onPressed: () {},
            //   color: Colors.blue,
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10)),
            //   textColor: Colors.white,
            //   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            //   splashColor: Colors.grey,
            // ),
            const SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  color: Colors.yellowAccent, border: Border.all()),
              child: DropdownButton(
                // Initial Value
                value: dropdownvalue,

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ),
            const SizedBox(height: 50),
            IconButton(
                color: Colors.blue,
                onPressed: () {},
                icon: const Icon(Icons.mic)),
            const SizedBox(height: 50),
            InkWell(
              splashColor: Colors.green,
              highlightColor: Colors.blue,
              child: const Icon(Icons.ring_volume, size: 50),
              onTap: () {
                setState(() {
                  _volume += 2;
                });
              },
            ),
            Text(_volume.toString(), style: const TextStyle(fontSize: 50)),
            const SizedBox(height: 50),
            Container(
              margin: const EdgeInsets.all(25),
              child: OutlineButton(
                child: const Text(
                  "Outline Button",
                  style: TextStyle(fontSize: 20.0),
                ),
                highlightedBorderColor: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {},
              ),
            ),

            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('Ok'),
                  color: Colors.blue,
                  onPressed: () {
                    // To do
                  },
                ),
                FlatButton(
                  child: const Text('Cancel'),
                  color: Colors.blue,
                  onPressed: () {
                    // To do
                  },
                ),
              ],
            ),
          ]),
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.deepOrangeAccent,
        foregroundColor: Colors.white,
        onPressed: () => {},
      ),*/
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {},
      //   backgroundColor: Colors.teal,
      //   icon: const Icon(Icons.save),
      //   label: const Text("Save"),
      // ),
    );
  }
}

class Choice {
  const Choice({required this.name, required this.icon});
  final String name;
  final IconData icon;
}

const List<Choice> choices = <Choice>[
  Choice(name: 'Wi-Fi', icon: Icons.wifi),
  Choice(name: 'Bluetooth', icon: Icons.bluetooth),
  Choice(name: 'Battery', icon: Icons.battery_alert),
  Choice(name: 'Storage', icon: Icons.storage),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key? key, required this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.greenAccent,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              choice.icon,
              size: 115.0,
            ),
            Text(
              choice.name,
            ),
          ],
        ),
      ),
    );
  }
}
