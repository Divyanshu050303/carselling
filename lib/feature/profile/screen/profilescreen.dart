import 'package:carselling/feature/profile/widget/lowercard.dart';
import 'package:carselling/feature/profile/widget/profileImage.dart';
import 'package:carselling/feature/profile/widget/profile_screen_appbar.dart';

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});


  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey.shade200,
      child: Column(
        children: [
          SizedBox(height: mediaQueryData.size.height*0.04,),
          const ProfileAppBar(),
          SizedBox(height: mediaQueryData.size.height*0.03,),
          const ProfileImage(),
          SizedBox(height: mediaQueryData.size.height*0.03,),
          const LowerCard(),


        ],
      ),
    );
  }
}
