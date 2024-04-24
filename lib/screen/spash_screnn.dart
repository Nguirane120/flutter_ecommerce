import 'dart:async';

import 'package:ecommerce/screen/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
    () => Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoardingScreen()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage("images/image2.jpg"),
              fit: BoxFit.cover,
              opacity: 0.5),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            Icons.shopping_cart,
            size: 255,
            color: Colors.red.shade100,
          ),
          Text(
            "DROP SHOP",
            
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.white),
          )
        ]),
      ),
    );
  }
}
