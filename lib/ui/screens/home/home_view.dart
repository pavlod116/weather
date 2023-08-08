import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/ui/constants/AppImages.dart';
import 'package:weather/ui/screens/home/home_view_model.dart';
import 'package:weather/ui/widgets/icon_widget.dart';

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
    return Consumer<HomeViewModel>(builder: (_, model, child) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconWidget(
                      image: const AssetImage(AppImage.setting),
                      onTap: () {
                        model.navigationPushSetting(context);
                      }),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: IconWidget(
                      image: const AssetImage(AppImage.notification),
                      onTap: () {
                        model.navigationPushMessage(context);
                      }),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
