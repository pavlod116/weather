import 'package:flutter/material.dart';
import 'package:weather/ui/constants/AppColors.dart';

class GeoLocation extends StatelessWidget {
  const GeoLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: Center(
        child: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
            height: 50,
            width: 200,
            color: Colors.white,
            child: Row(children: const [
              Icon(Icons.location_on_outlined),
              Text('GEO_LOCATION')
            ],),
          ),
        ),
      ),
    );
  }
}
