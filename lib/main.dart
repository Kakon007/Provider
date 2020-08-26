import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_crud/homepage.dart';
import 'package:provider_crud/model.dart';
import 'package:provider_crud/ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider(
        create: (context) => Model(),
        child: Homepage(),
      ),
    );
  }
}
