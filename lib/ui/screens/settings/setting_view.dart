import 'package:flutter/material.dart';
import 'package:weather/ui/constants/AppColors.dart';
import 'package:weather/ui/constants/AppImages.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImage.setting)),
          color: AppColor.background,
          borderRadius: BorderRadius.circular(17),
            boxShadow: const [
              BoxShadow(color: AppColor.settingIcon, spreadRadius: 2)
            ]
        ),
      width: 53,
      height: 54,
    );
  }
}
