import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/ui/screens/button_navigation_bar/button_navigation_bar_view_model.dart';
import 'package:weather/ui/screens/home/home_view_model.dart';
import 'package:weather/weather.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => HomeViewModel()),
          ChangeNotifierProvider(create: (_) => ButtonNavigationBarViewModel()),
        ],
        child: const Weather()),
  );
}
