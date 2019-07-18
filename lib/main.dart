import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:just_for_fun_in_flutter/models/path_access.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateFul();
  }
}

class StateFul extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "FirstApp", home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  TextEditingController textController = TextEditingController();
  double finalSize = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double finalSize = size.width;

    if (size.height <= size.width) {
      finalSize = size.height;
    }

    debugPrint("Size: $finalSize");

    return Container(
        child: Scaffold(
            body: new QrImage(
      data: "1234567890",
      size: finalSize,
    )));
  }
}
