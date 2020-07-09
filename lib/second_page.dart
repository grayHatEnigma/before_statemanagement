import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final Function onRemove;
  final Function onAdd;

  const SecondPage({@required this.onRemove, @required this.onAdd});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Before StateManagement'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: widget.onAdd,
              child:
                  Text('Add an Item!', style: TextStyle(color: Colors.white)),
              color: Colors.green,
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: widget.onRemove,
              child: Text('Remove Last Item!',
                  style: TextStyle(color: Colors.white)),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}

/* 




*/
