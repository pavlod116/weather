// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/ui/constants/AppColors.dart';
import 'package:weather/ui/screens/button_navigation_bar/button_navigation_bar_view_model.dart';
import 'package:weather/ui/screens/compass/compass_view.dart';
import 'package:weather/ui/screens/home/home_view.dart';
import 'package:weather/ui/screens/users/users_view.dart';

import '../notes/notes_view.dart';

// ignore: must_be_immutable
class ButtonNavigationBar extends StatelessWidget {
  const ButtonNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ButtonNavigationBarViewModel>(
      builder: (_, model, child) {
        return Scaffold(
          backgroundColor: AppColor.background,
          body: SafeArea(
            child: PageView(
              controller: model.pageController,
              children: const <Widget>[
                HomeView(),
                CompassView(),
                NotesView(),
                UsersView(),
              ],
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: AppColor.background,
            ),
            child: BottomNavigationBar(
              selectedLabelStyle:
                  const TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              selectedIconTheme: const IconThemeData(size: 33),
              unselectedIconTheme: const IconThemeData(size: 28),
              selectedItemColor: AppColor.textColor,
              unselectedItemColor: AppColor.onUseIcon,
              backgroundColor: AppColor.background,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: '.',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.compass_calibration),
                  label: '.',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notes_outlined),
                  label: '.',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outlined),
                  label: '.',
                ),
              ],
              currentIndex: model.currentIndex,
              onTap: (index) => model.navigation(index),
            ),
          ),
        );
      },
    );
  }
}
