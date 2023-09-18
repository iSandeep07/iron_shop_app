import 'dart:async';
//import 'dart:js';

import 'package:flutter/material.dart';

import 'Onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home:_MyHomePageState(),
    );
  }
}

class _MyHomePageState extends StatefulWidget {
  const _MyHomePageState({super.key});

  @override
  State<_MyHomePageState> createState() => _MyHomePageStateState();
}

class _MyHomePageStateState extends State<_MyHomePageState> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
      openOnBoard
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/images/bg.png")
          )
        ),
        child: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/images/logo.png")
              )
            ),
          ),
        ),
      ),
    );
  }

  void openOnBoard(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Onboarding()),);
  }
}



