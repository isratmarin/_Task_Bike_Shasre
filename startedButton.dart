import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_bike_sharing_app/pages/onBoarding/onboardig2.dart';
import 'package:task_bike_sharing_app/pages/onBoarding/onboarding.dart';
import 'package:task_bike_sharing_app/pages/splash.dart';

class StartedButton extends StatelessWidget {
  const StartedButton({super.key});

  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Container(
          child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          foregroundColor: MaterialStateProperty.all(Colors.black),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(color: Colors.white))),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Onboarding()),
          );
        },
        child: Text(
          "Get Started",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      )),
    ));
  }
}
