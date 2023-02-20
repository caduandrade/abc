import 'package:abc/home.dart' deferred as home;
import 'package:flutter/material.dart';

void main() {
  runApp(FutureBuilder(
    future: home.loadLibrary(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: home.MyHomePage(title: 'teste'),
        );
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    },
  ));
}
