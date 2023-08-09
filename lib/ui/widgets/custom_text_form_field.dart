import 'package:flutter/material.dart';
import 'package:weather/ui/constants/AppColors.dart';
import 'package:weather/ui/constants/AppImages.dart';
import 'package:weather/ui/constants/AppString.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
