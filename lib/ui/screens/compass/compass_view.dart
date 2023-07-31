import 'package:flutter/material.dart';

class CompassView extends StatefulWidget {
  const CompassView({Key? key}) : super(key: key);

  @override
  State<CompassView> createState() => _CompassViewState();
}

class _CompassViewState extends State<CompassView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.pink,
      child: const Center(child: Text('lol')),
    );
  }
}
