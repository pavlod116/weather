import 'package:flutter/material.dart';
import 'package:weather/ui/constants/AppImages.dart';
import 'package:weather/ui/screens/geo_location/geo_location.dart';

class LocationPoint extends StatelessWidget {
  const LocationPoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          _buildLocationPoint(context),
          const Spacer(),
          _buildProfile(),
        ],
      ),
    );
  }


  Widget _buildLocationPoint(BuildContext context){
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GeoLocation()),
            );
          },
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                  bottomLeft: Radius.circular(40.0),
              ),
            ),
            height: 30,
            width: 100,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: const [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(Icons.location_on_outlined, color: Colors.white,),),
                  SizedBox(width: 10),
                  Text('Home', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfile(){
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: CircleAvatar(
          radius: 25, // Image radius
          backgroundImage: AssetImage(AppImage.logo),
        )
      ),
    );
  }
}
