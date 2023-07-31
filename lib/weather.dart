import 'package:flutter/material.dart';
import 'package:weather/ui/screens/button_navigation_bar/button_navigation_bar_view.dart';

class Weather extends StatelessWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ButtonNavigationBar(),
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          elevation: 0,
        ),
      ),
    );
  }
}
