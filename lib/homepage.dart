import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_crud/model.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      var clck = Provider.of<Model>(context, listen: false);
      clck.clockchange();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset('asstes/asst/clck.jpg'),
              Consumer<Model>(builder: (context, data, child) {
                //data is instance of Model class.
                // For this we can use the properties of this class
                return Text(
                  data.gettime().toString(),
                  style: TextStyle(fontSize: 50),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
