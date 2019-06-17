import 'package:dojo_flutter_api_listas/views/principalView.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DOJO Flutter Sage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PrincipalView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
