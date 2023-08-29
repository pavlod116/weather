import 'package:flutter/material.dart';
import 'package:weather/ui/screens/message/message_view.dart';

class SettingViewModel extends ChangeNotifier {
  void navigationPushMessage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MessageView()),
    );
  }

  void navigationPushPop(BuildContext context) {
    Navigator.pop(context);
  }
}
