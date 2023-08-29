import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/ui/constants/AppColors.dart';
import 'package:weather/ui/constants/AppImages.dart';
import 'package:weather/ui/constants/AppString.dart';
import 'package:weather/ui/screens/compass/compass_view_model.dart';
import 'package:weather/ui/widgets/cart_widget.dart';
import 'package:weather/ui/widgets/icon_widget.dart';
import 'package:weather/ui/widgets/list_mini_cart_widget.dart';
import 'package:weather/ui/widgets/today_list_cart.dart';

class CompassView extends StatefulWidget {
  const CompassView({Key? key}) : super(key: key);

  @override
  State<CompassView> createState() => _CompassViewState();
}

class _CompassViewState extends State<CompassView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CompassViewModel>(builder: (_, model, child) {
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
                        model.navigationPushSettings(_);
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
          cartWidget(),
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 30,
              right: 30,
            ),
            child: Row(
              children: const [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppStrings.today,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 21,
                        color: AppColor.textColor),
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    AppStrings.nextDay,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        color: AppColor.textColor),
                  ),
                ),
              ],
            ),
          ),
          Container(
            constraints: const BoxConstraints(
              maxHeight: 107,
            ),
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 20),
              scrollDirection: Axis.horizontal,
              itemCount: todayListCart.length,
              itemBuilder: (BuildContext context, int index) {
                return todayListCart[index];
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 30,
              right: 30,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Temperature',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 21,
                    color: AppColor.textColor),
              ),
            ),
          ),
          Container(
            constraints: const BoxConstraints(
              maxHeight: 88,
            ),
            child: ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 20),
              scrollDirection: Axis.horizontal,
              itemCount: listMiniCart.length,
              itemBuilder: (BuildContext context, int index) {
                return listMiniCart[index];
              },
            ),
          ),
        ],
      );
    });
  }
}
