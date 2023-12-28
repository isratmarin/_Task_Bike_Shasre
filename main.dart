import 'package:flutter/material.dart';
import 'package:task_bike_sharing_app/pages/SignUp/login.dart';
import 'package:task_bike_sharing_app/pages/SignUp/varification.dart';
import 'package:task_bike_sharing_app/pages/onBoarding/onboardig2.dart';
import 'package:task_bike_sharing_app/pages/onBoarding/onboarding.dart';
import 'package:task_bike_sharing_app/pages/onBoarding/onboarding3.dart';

import 'package:task_bike_sharing_app/pages/profile/support.dart';
import 'package:task_bike_sharing_app/pages/profile/welcome.dart';
import 'package:task_bike_sharing_app/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) =>WelcomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        // '/second': (context) => const Onboarding(),
      },
    );
  }
}
