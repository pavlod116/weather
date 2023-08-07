import 'package:flutter/material.dart';
import 'package:weather/ui/screens/settings/setting_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
        child: Row(
          children: const [
            Align(
              alignment: Alignment.centerLeft,
              child:SettingView(),),
            Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child:SettingView(),),
          ],
        ),
    ),
      ],
    );
  }
}
