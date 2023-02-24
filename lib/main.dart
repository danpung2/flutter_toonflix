import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// [START] Hello Flutter

void main() {
  runApp(App());
}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter!"),
        ),
        body: Center(
          child: Text("Hello World!"),
        ),
      ),
    );
  }

}

// [END] Hello Flutter