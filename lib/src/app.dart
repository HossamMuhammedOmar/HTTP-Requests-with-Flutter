import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;

  void fitchImage() {
    setState(() async {
      counter++;
      var response =
          await get('https://jsonplaceholder.typicode.com/photos/$counter');
      var imageModle = new ImageModel.fromJson(json.decode(response.body));
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Let\'s See Images!'),
        ),
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: fitchImage,
        ),
      ),
    );
  }
}
