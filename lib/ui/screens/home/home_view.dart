import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/ui/constants/AppColors.dart';
import 'package:weather/ui/constants/AppImages.dart';
import 'package:weather/ui/constants/AppString.dart';
import 'package:weather/ui/screens/home/home_view_model.dart';
import 'package:weather/ui/widgets/big_cart_widget.dart';
import 'package:weather/ui/widgets/custom_text_form_field.dart';
import 'package:weather/ui/widgets/icon_widget.dart';
import 'package:weather/ui/widgets/list_mini_cart_widget.dart';

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
    return Consumer<HomeViewModel>(
      builder: (_, model, child) {
        return Column(
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
            const CustomTextFormField(),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 20),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppStrings.nextWeek,
                    style: TextStyle(
                      color: AppColor.textColor,
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                scrollDirection: Axis.horizontal,
                itemCount: listMiniCart.length,
                itemBuilder: (BuildContext context, int index) {
                  return listMiniCart[index];
                },
              ),
            ),
            bigCartWidget(),
          ],
        );
      },
    );
  }
}
