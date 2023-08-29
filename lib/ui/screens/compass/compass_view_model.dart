import 'package:flutter/material.dart';
import 'package:weather/ui/screens/message/message_view.dart';
import 'package:weather/ui/screens/settings/setting_view.dart';

class CompassViewModel extends ChangeNotifier {
  void navigationPushMessage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MessageView()),
    );
  }

  void navigationPushSettings(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SettingView()),
    );
  }
}
