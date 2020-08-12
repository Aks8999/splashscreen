import 'dart:async';

import 'package:flutter/material.dart';
import 'main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), ()=> Navigator.pushNamed(context, "/home"));
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/image.jpg")
              )
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.shopping_cart,
                        size: 70,
                        color: Colors.cyan,
                      ),
                      backgroundColor: Colors.white,
                      radius: 70.0,
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Text("Little Deals",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(30.0),
                    ),
                    CircularProgressIndicator(
                      backgroundColor: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),

                    Text("Loading",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white

                      ),
                    )
                  ],
                )
            )
          ],
        ),

      ],
    );
  }
}
