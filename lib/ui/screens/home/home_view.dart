import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/ui/constants/AppColors.dart';
import 'package:weather/ui/constants/AppImages.dart';
import 'package:weather/ui/constants/AppString.dart';
import 'package:weather/ui/screens/home/home_view_model.dart';
import 'package:weather/ui/widgets/custom_text_form_field.dart';
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 35),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: AppColor.cartBackground,
                          borderRadius: BorderRadius.all(Radius.circular(17))),
                      width: 62,
                      height: 88,
                      child: Stack(
                        children:  [
                          const Align(
                            alignment: Alignment.topCenter,
                            child:
                           Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                '18°C',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: AppColor.background),
                              )),),
                      Align(
                        alignment: Alignment.center,
                        child:
                        Image.asset(AppImage.sunLittleRain),),
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child:
                        Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: Text(
                                '06:00',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                    color: AppColor.background),
                              )),
                      ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 35),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: AppColor.cartBackground,
                          borderRadius: BorderRadius.all(Radius.circular(17))),
                      width: 62,
                      height: 88,
                      child: Stack(
                        children:  [
                          const Align(
                            alignment: Alignment.topCenter,
                            child:
                            Padding(
                                padding: EdgeInsets.only(top: 4),
                                child: Text(
                                  '18°C',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: AppColor.background),
                                )),),
                          Align(
                            alignment: Alignment.center,
                            child:
                            Image.asset(AppImage.sunLittleRain),),
                          const Align(
                            alignment: Alignment.bottomCenter,
                            child:
                            Padding(
                                padding: EdgeInsets.only(bottom: 4),
                                child: Text(
                                  '06:00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: AppColor.background),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 35),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: AppColor.cartBackground,
                          borderRadius: BorderRadius.all(Radius.circular(17))),
                      width: 62,
                      height: 88,
                      child: Stack(
                        children:  [
                          const Align(
                            alignment: Alignment.topCenter,
                            child:
                            Padding(
                                padding: EdgeInsets.only(top: 4),
                                child: Text(
                                  '18°C',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: AppColor.background),
                                )),),
                          Align(
                            alignment: Alignment.center,
                            child:
                            Image.asset(AppImage.sunLittleRain),),
                          const Align(
                            alignment: Alignment.bottomCenter,
                            child:
                            Padding(
                                padding: EdgeInsets.only(bottom: 4),
                                child: Text(
                                  '06:00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: AppColor.background),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 35),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: AppColor.cartBackground,
                          borderRadius: BorderRadius.all(Radius.circular(17))),
                      width: 62,
                      height: 88,
                      child: Stack(
                        children:  [
                          const Align(
                            alignment: Alignment.topCenter,
                            child:
                            Padding(
                                padding: EdgeInsets.only(top: 4),
                                child: Text(
                                  '18°C',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: AppColor.background),
                                )),),
                          Align(
                            alignment: Alignment.center,
                            child:
                            Image.asset(AppImage.sunLittleRain),),
                          const Align(
                            alignment: Alignment.bottomCenter,
                            child:
                            Padding(
                                padding: EdgeInsets.only(bottom: 4),
                                child: Text(
                                  '06:00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: AppColor.background),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 35),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: AppColor.cartBackground,
                          borderRadius: BorderRadius.all(Radius.circular(17))),
                      width: 62,
                      height: 88,
                      child: Stack(
                        children:  [
                          const Align(
                            alignment: Alignment.topCenter,
                            child:
                            Padding(
                                padding: EdgeInsets.only(top: 4),
                                child: Text(
                                  '18°C',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: AppColor.background),
                                )),),
                          Align(
                            alignment: Alignment.center,
                            child:
                            Image.asset(AppImage.sunLittleRain),),
                          const Align(
                            alignment: Alignment.bottomCenter,
                            child:
                            Padding(
                                padding: EdgeInsets.only(bottom: 4),
                                child: Text(
                                  '06:00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: AppColor.background),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 35),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: AppColor.cartBackground,
                          borderRadius: BorderRadius.all(Radius.circular(17))),
                      width: 62,
                      height: 88,
                      child: Stack(
                        children:  [
                          const Align(
                            alignment: Alignment.topCenter,
                            child:
                            Padding(
                                padding: EdgeInsets.only(top: 4),
                                child: Text(
                                  '18°C',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: AppColor.background),
                                )),),
                          Align(
                            alignment: Alignment.center,
                            child:
                            Image.asset(AppImage.sunLittleRain),),
                          const Align(
                            alignment: Alignment.bottomCenter,
                            child:
                            Padding(
                                padding: EdgeInsets.only(bottom: 4),
                                child: Text(
                                  '06:00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: AppColor.background),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: AppColor.cartBackground,
                          borderRadius: BorderRadius.all(Radius.circular(17))),
                      width: 62,
                      height: 88,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: AppColor.cartBackground,
                          borderRadius: BorderRadius.all(Radius.circular(17))),
                      width: 62,
                      height: 88,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: AppColor.cartBackground,
                          borderRadius: BorderRadius.all(Radius.circular(17))),
                      width: 62,
                      height: 88,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: AppColor.cartBackground,
                        borderRadius: BorderRadius.all(Radius.circular(17))),
                    width: 62,
                    height: 88,
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    });
  }
}
