import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:travel_plane/store/AppStore.dart';

import 'Screans/Travel PL_Dashboard.dart';
import 'utils/TravelPlane Colors.dart';
import 'utils/TravelPlane Images.dart';

AppStore appStore = AppStore();
void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          duration: 3000,
          backgroundColor: TravelPlane_AppBarColor,
          splash: Image.asset(
            TravelPlane_splashTitle,
            height: 30,
            width: 180,
          ),
          nextScreen: Dashboard()),
    );
  }
}
