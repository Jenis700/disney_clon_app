import 'package:flutter/material.dart';
import 'package:disney_app/componants.dart';

import 'Screens/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          accentColor: kMainColor,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
