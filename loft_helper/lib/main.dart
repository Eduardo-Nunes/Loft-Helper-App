import 'package:animated_splash/animated_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'pages/welcome_page.dart';
import 'styles/Colors.dart';
import 'styles/Dimens.dart';
import 'styles/Images.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          backgroundColor: backgroundColor,
          primarySwatch: Colors.deepOrange,
          primaryColor: primaryColor),
      home: AnimatedSplash(
        imagePath: APP_LOGO_PATH,
        home: Scaffold(
          backgroundColor: backgroundColor,
          body: SingleChildScrollView(
            child: WelcomePage(),
          ),
        ),
        duration: SPLASH_ANIM_DURATION,
        type: AnimatedSplashType.StaticDuration,
      ),
    );
  }
}
