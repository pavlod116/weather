import 'package:flutter/material.dart';
import 'package:weather/ui/constants/AppColors.dart';

class IconWidget extends StatelessWidget {

 final AssetImage image;
 final Function()? onTap;

   const IconWidget({Key? key, required this.image, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: image),
        color: AppColor.background,
        borderRadius: BorderRadius.circular(17),
        boxShadow: const [
          BoxShadow(color: AppColor.radiusIcon, spreadRadius: 2),
        ],
      ),
      width: 54,
      height: 54,
      ),
    );
  }
}
