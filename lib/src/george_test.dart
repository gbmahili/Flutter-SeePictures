// TESTING IMPLEMENTATION OF A STATEFUL WIDGET

import 'package:flutter/material.dart';

// Widget
class George extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GeorgeState();
  }
}

// State
class GeorgeState extends State<George> {
  int x = 0;
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Your Title Goes Here'),),
        body: Text('This is some text in the body part. The count is now $x'),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('hi');
            setState(() {
              x+= 1;
            });
          },
        ),
      ),
    );
  }
}
