import 'package:flutter/material.dart';
import 'package:weather/ui/constants/AppColors.dart';
import 'package:weather/ui/constants/AppImages.dart';
import 'package:weather/ui/widgets/icon_widget.dart';

class MessageView extends StatelessWidget {
  const MessageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconWidget(
                    image: const AssetImage(AppImage.exit),
                    onTap: () {
                      Navigator.pop(context);
                    }),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 30, top: 20),
                child: Text(
                  'Messages',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 180),
                child: Image.asset(AppImage.notificationSetting),
              ),
            ),
            const SizedBox(height: 30),
             Container(
                width: 255,

                child: const Text(
              'Розділ в розробці та'
              ' тимчасово не доступний.',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            )
            ),
          ],
        ),
      ),
    );
  }
}
