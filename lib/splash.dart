import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import './home.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 10), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: 'Flutter Demo Home Page')));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                SizedBox(
                  child: Lottie.asset("assets/splash_screen.json"),
                )
            ],
          ),
        ),
      );
  }

}