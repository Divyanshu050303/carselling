import 'package:carselling/feature/setting/widget/appbarsetting.dart';
import 'package:carselling/feature/setting/widget/settingItemCard.dart';
import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey.shade300,
      child: Column(
        children: [
          SizedBox(height: mediaQueryData.size.height*0.06,),
          const AppBars(),
          SizedBox(height: mediaQueryData.size.height*0.07,),
          const SettingCard()


        ],
      ),
    );;
  }
}
