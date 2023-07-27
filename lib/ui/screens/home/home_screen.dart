import 'package:flutter/material.dart';
import 'package:weather/ui/constants/AppColors.dart';
import 'package:weather/ui/constants/AppString.dart';
import 'package:weather/ui/screens/home/widget/build_location_point.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const LocationPoint(),
            const Text(AppStrings.weather,
              style: TextStyle(fontSize: 20, color: AppColor.black),
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
