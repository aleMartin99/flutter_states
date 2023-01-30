import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MaterialButton(
              color: Colors.blue,
              onPressed: (() {}),
              child: Text(
                'Set user',
                style: TextStyle(color: Colors.white),
              )),
          MaterialButton(
              color: Colors.blue,
              onPressed: (() {}),
              child: Text(
                'Change age',
                style: TextStyle(color: Colors.white),
              )),
          MaterialButton(
              color: Colors.blue,
              onPressed: (() {}),
              child: Text(
                'Add profession',
                style: TextStyle(color: Colors.white),
              ))
        ],
      )),
    );
  }
}
