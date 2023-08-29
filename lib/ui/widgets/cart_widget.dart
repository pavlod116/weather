import 'package:flutter/material.dart';
import 'package:weather/ui/constants/AppColors.dart';
import 'package:weather/ui/constants/AppImages.dart';
import 'package:weather/ui/constants/AppString.dart';

cartWidget() {
  return Padding(
    padding: const EdgeInsets.only(top: 30),
    child: Container(
      decoration: const BoxDecoration(
          color: AppColor.cartBackground,
          borderRadius: BorderRadius.all(Radius.circular(34))),
      width: 334,
      height: 186,
      child: Padding(
        padding: const EdgeInsets.only(left: 25, top: 20),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    AppStrings.dayDate,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w100,
                        color: AppColor.background),
                  ),
                  Text(
                    AppStrings.city,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColor.background),
                  ),
                  SizedBox(height: 10),
                  Text(
                    AppStrings.degree,
                    style: TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.w700,
                        color: AppColor.background),
                  ),
                  SizedBox(height: 10),
                  Text(
                    AppStrings.sunnyCloudy,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: AppColor.background),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset(AppImage.sunCloudLittleRain),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
