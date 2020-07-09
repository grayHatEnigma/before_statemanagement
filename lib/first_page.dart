import 'package:flutter/material.dart';

import 'package:counter/second_page.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _counter = 0;
  var list = [
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
    Text('Item 4'),
    Text('Item 5'),
    Text('Item 6'),
    Text('Item 7'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Before StateManagement'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ...list,
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondPage(
                          onAdd: () {
                            setState(() {
                              list.add(Text('New Item ${++_counter}'));
                            });
                          },
                          onRemove: () {
                            setState(() {
                              if (list.length > 0) {
                                list.removeLast();
                              }
                            });
                          },
                        ),
                      ),
                    );
                  },
                  color: Colors.amber,
                  child: Text('GOTO Actions Page!'),
                ),
              ]),
        ),
      ),
    );
  }
}
