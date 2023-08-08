import 'package:flutter/material.dart';
import 'package:weather/ui/screens/message/message_view.dart';
import 'package:weather/ui/screens/settings/setting_view.dart';

class HomeViewModel extends ChangeNotifier {


  void navigationPushSetting(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SettingView()),
    );
  }

  void navigationPushMessage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MessageView()),
    );
  }
}
