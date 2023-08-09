import 'dart:io';

import 'package:flutter/material.dart';
import 'package:weather/ui/screens/message/message_view.dart';

class HomeViewModel extends ChangeNotifier {
  void navigationPushExit(BuildContext context) {
    exit(0);
  }

  void navigationPushMessage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MessageView()),
    );
  }
}
