import 'package:abc/home.dart' deferred as home;
import 'package:flutter/widgets.dart';

void main() {
  //runApp( const Center(child:SizedBox(width:200, height:200, child: Placeholder())));

  runApp(FutureBuilder(
    future: home.loadLibrary(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        return home.MyHomePage(title: 'teste');
      } else {
        return const Center(child: Text('loading...'));
      }
    },
  ));


}