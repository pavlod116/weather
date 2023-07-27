import 'package:flutter/material.dart';
import 'package:weather/ui/constants/AppColors.dart';
import 'package:weather/ui/constants/AppString.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(weather,
              style: TextStyle(fontSize: 20, color: black),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 100,
              height: 50,
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
