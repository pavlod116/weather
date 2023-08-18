import 'package:flutter/material.dart';
import 'package:weather/ui/constants/AppColors.dart';

Widget customDivider() {
  return Padding(
    padding: const EdgeInsets.only(left: 30, right: 30),
    child: Container(height: 2, color: AppColor.divider),
  );
}
