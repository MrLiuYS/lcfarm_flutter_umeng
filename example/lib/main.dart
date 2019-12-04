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
//083 的账号
    LcfarmFlutterUmeng.init(
      iOSAppKey: "5d89c4f03fc1951398000216",
      androidAppKey: "5d89c455570df312a900009a",
      channel: "test1",
      logEnable: true
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running on: lcfarm_flutter_umeng\n test1'),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add), onPressed: _btnClick1111),
      ),
    );
  }

  void _btnClick1111() {
    print("_btnClick1111");

    LcfarmFlutterUmeng.event("asdf");

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
