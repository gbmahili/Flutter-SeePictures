/**
 * HOW TO CREATE A NEW COMPONENT IN FLUTTER
 */
/**
 * To create a custom Widget (Component),
 * 1. you must pass in a method called build
 * 2. the build method must have a Context prop (can be named context)
 * 3. It must return a Widget (Any widget...Text, Scafold, MaterialApp, etc...)
 */

// import flutter helper library
import 'package:flutter/material.dart';
// import http for api calls
//import 'package:http/http.dart';// this imports everything out of http...but we only need get
import 'package:http/http.dart' show get; // only retrieve the get method from http, not everything
import 'dart:convert';
import 'models/image_model.dart';


// Create a class that will be our custom widget (compoent for ReactNative)
// It must extends the 'StatelessWideget' base class
class App_OLD_WITHOUT_STATE_NOT_BEING_USED extends StatelessWidget {
  // Stateless is more like a functional component in React Native
  // Must define a build method that returns the widgets that 'this' widget will show
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Baraka's Images"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('hi there');
          },
          tooltip: 'Add new image',
        ),
      ),
    );
  }
}
// This component must be imported whereever it will be used: import 'app.dart'..to use it: App()

// Convert the App Widget to a StatefullWidget

// 1. First, create a class with Statefullness which returns the State classs
class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

// 2. Create the state of the app (data)
class AppState extends State<App> {
  // Stateless is more like a functional component in React Native
  // Must define a build method that returns the widgets that 'this' widget will show

  // value to be incremeneted
  int counter = 0;
  // Fetching data from API:
  void fetchImage() async {
    counter++;
    var response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var parsedData = json.decode(response.body);//parsing data like in JS
    var imageModel = ImageModel.fromJson(parsedData);
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Baraka's Images"),
        ),
        body: Center(child: Text('$counter')),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: fetchImage,// no parentesis at the end because we don't want to run the function when build is called
          // onPressed: () {
          //   //increment the counter and update state
          //   setState(() {
          //     counter += 1;
          //   });
          // },
          tooltip: 'Add new image',
        ),
      ),
    );
  }
}
