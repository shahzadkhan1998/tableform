import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

var list = [
  {"Name": "Apple", "price": "50", "kg": "1"},
  {"Name": "banana", "price": "100", "kg": "2"},
  {"Name": "grapes", "price": "120", "kg": "3"},
  {"Name": "orange", "price": "60", "kg": "4"},
  {"Name": "melon", "price": "40", "kg": "3"},
];

class MyApp extends StatefulWidget {
  @override
  _TableExample createState() => _TableExample();
}

class _TableExample extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Table Example'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Table(
                  defaultColumnWidth: const FixedColumnWidth(120.0),
                  border: TableBorder.all(
                      color: Colors.black, style: BorderStyle.solid, width: 2),
                  children: [
                    TableRow(children: [
                      Column(children: const [
                        Text('Website', style: TextStyle(fontSize: 20.0))
                      ]),
                      Column(children: const [
                        Text('Tutorial', style: TextStyle(fontSize: 20.0))
                      ]),
                      Column(children: const [
                        Text('Review', style: TextStyle(fontSize: 20.0))
                      ]),
                    ]),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                    child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Table(
                      defaultColumnWidth: const FixedColumnWidth(120.0),
                      border: TableBorder.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 2),
                      children: [
                        TableRow(
                          children: [
                            Column(children: [Text('${list[index]["Name"]}')]),
                            Column(children: [Text('${list[index]["price"]}')]),
                            Column(children: [Text('${list[index]["kg"]}')]),
                          ],
                        ),
                      ],
                    );
                  },
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
