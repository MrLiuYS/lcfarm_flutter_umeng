import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:lcfarm_flutter_umeng/lcfarm_flutter_umeng.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
//    initPlatformState();

    LcfarmFlutterUmeng.init(
        "5cb3dcc00cafb2231600019a", "5cb3dcef61f5646dab001371",
        logEnable: true);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running on: lcfarm_flutter_umeng\n'),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add), onPressed: _btnClick1111),
      ),
    );
  }

  void _btnClick1111() {
    print("_btnClick1111");

    LcfarmFlutterUmeng.event("floatingActionButton");

//    var list = [1, 2, 3];
//    var x = list[10];
//
//    list.removeAt(10);
//
//    print(x);

//    setState(() {
//      isCrash = true;
//    });
  }
}
