import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Baraka's Images"),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: (){
      //     print('hi there');
      //   },
      //   tooltip: 'Add new image',
      // ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
          print('Clicked on extended floating action button');
        },
        label: Text('Add Image'),
        icon: Icon(Icons.add),
        backgroundColor: Colors.blueGrey,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlueAccent,
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    ),
  );
  runApp(app);
}
