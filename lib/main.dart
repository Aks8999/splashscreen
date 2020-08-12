import 'dart:async';
import 'SplashScreen.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    title: "Splash Screen",
    home: SplashScreen(),
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    debugShowCheckedModeBanner: false,
    routes: {
      "/home":(context)=> HomePage(),
    },

  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
    );
  }
}

