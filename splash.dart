import 'dart:async';
import 'package:flutter/material.dart';
import 'package:task_bike_sharing_app/pages/onBoarding/onboarding.dart';
import 'package:task_bike_sharing_app/widget/startedButton.dart';

import '../widget/shapeSize.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors
      //     .cyan.shade500, // Set the background color of your splash screen
      body: Container(
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color(0xff2ff598),
              Color(0xff009efd),
            ], // Gradient from https://learnui.design/tools/gradient-generator.html
            tileMode: TileMode.mirror,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // // You can add your bike share app logo or any other branding here

            ImagesSize(),
            SizedBox(
              height: 100,
            ),
            StartedButton(),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
              ),
              child: Row(
                children: [
                  Text(
                    "Already Have An Account?",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  TextButton(
                      onPressed: () {

                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
