import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/ui/constants/AppColors.dart';
import 'package:weather/ui/constants/AppImages.dart';
import 'package:weather/ui/constants/AppString.dart';
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
                      image: const AssetImage(AppImage.exit),
                      onTap: () {
                        model.navigationPushExit(context);
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
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: TextFormField(
              cursorColor: AppColor.black,
              decoration: const InputDecoration(
                prefixIcon: ImageIcon(
                  AssetImage(
                    AppImage.searchIcon,
                  ),
                  color: AppColor.iconSearch,
                ),
                hintText: AppStrings.hintTextSearch,
                filled: true,
                fillColor: AppColor.searchBackground,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.searchBackground),
                  borderRadius: BorderRadius.all(
                    Radius.circular(14),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.searchBackground),
                  borderRadius: BorderRadius.all(
                    Radius.circular(14),
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.searchBackground),
                  borderRadius: BorderRadius.all(
                    Radius.circular(14),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
