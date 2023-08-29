import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/ui/constants/AppColors.dart';
import 'package:weather/ui/constants/AppImages.dart';
import 'package:weather/ui/constants/AppString.dart';
import 'package:weather/ui/screens/settings/setting_view_model.dart';
import 'package:weather/ui/widgets/icon_widget.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingViewModel>(
      builder: (_, model, child) {
        return Scaffold(
          backgroundColor: AppColor.background,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: IconWidget(
                            image: const AssetImage(AppImage.exit),
                            onTap: () {
                              model.navigationPushPop(_);
                            }),
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconWidget(
                            image: const AssetImage(AppImage.notification),
                            onTap: () {
                              model.navigationPushMessage(_);
                            }),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppStrings.settings,
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 21),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 334,
                    height: 78,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(34),
                      color: AppColor.cartBackground,
                    ),
                    child: const Align(
                      child: Text(
                        AppStrings.temperature,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: AppColor.background,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 334,
                  height: 78,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    color: AppColor.cartBackground,
                  ),
                  child: const Align(
                    child: Text(
                      AppStrings.airHumidity,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: AppColor.background,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 334,
                  height: 78,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    color: AppColor.cartBackground,
                  ),
                  child: const Align(
                    child: Text(
                      AppStrings.darkTopic,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: AppColor.background,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
