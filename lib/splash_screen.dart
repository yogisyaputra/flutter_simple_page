import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_simple_page/login.dart';

import 'size_config.dart';

class PageSplashScreen extends StatefulWidget {
  const PageSplashScreen({Key? key}) : super(key: key);

  @override
  State<PageSplashScreen> createState() => _PageSplashScreenState();
}

class _PageSplashScreenState extends State<PageSplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const PageLogin(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.green,
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight *0.3),
              Text(
                "Simple Page \nSplash Screen \nLogin dan Register",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Text(
                "@yogisyaputra",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getProportionateScreenWidth(18),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
