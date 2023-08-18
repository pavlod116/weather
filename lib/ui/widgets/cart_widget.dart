import 'package:flutter/material.dart';
import 'package:weather/ui/constants/AppColors.dart';
import 'package:weather/ui/constants/AppImages.dart';
import 'package:weather/ui/constants/AppString.dart';
import 'package:weather/ui/widgets/custom_divider.dart';

Widget cartWidget() {
  return Padding(
    padding: const EdgeInsets.only(top: 20, bottom: 20),
    child: Container(
      width: 334,
      height: 348,
      decoration: const BoxDecoration(
          color: AppColor.cartBackground,
          borderRadius: BorderRadius.all(Radius.circular(34))),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(top: 28),
              child: Text(
                AppStrings.potentialWeather,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColor.background),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Container(
              width: 280,
              height: 87,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppStrings.degree,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 36,
                          color: AppColor.background),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          AppStrings.monday,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: AppColor.background),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          AppStrings.date,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: AppColor.background),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 25),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(AppImage.sunCloudLittleRain),
                  ),
                ],
              ),
            ),
          ),
          customDivider(),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Container(
              width: 280,
              height: 87,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 66,
                      child: const Text(
                        '5°',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 36,
                            color: AppColor.background),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Thursday',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: AppColor.background),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          AppStrings.date,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: AppColor.background),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 25),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(AppImage.sunCloudLittleRain),
                  ),
                ],
              ),
            ),
          ),
          customDivider(),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Container(
              width: 280,
              height: 87,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 66,
                      child: const Text(
                        '25°',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 36,
                            color: AppColor.background),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Wednesday',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: AppColor.background),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          AppStrings.date,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: AppColor.background),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 25),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(AppImage.sunCloudLittleRain),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
