import 'package:carselling/feature/setting/widget/appbarsetting.dart';
import 'package:carselling/feature/setting/widget/cardwithradiobutton.dart';
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
      color: Colors.grey.shade200,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: mediaQueryData.size.height*0.04,),
            const AppBars(),
            SizedBox(height: mediaQueryData.size.height*0.03,),
            const SettingCard(iconData: Icons.calendar_month,title: "Appointment Reminder",),
            SizedBox(height: mediaQueryData.size.height*0.03,),
            const SettingCard(iconData: Icons.location_on,title: "Preferred Location",),
            SizedBox(height: mediaQueryData.size.height*0.03,),
            const SettingCard(iconData: Icons.favorite,title: "FAQs",),
            SizedBox(height: mediaQueryData.size.height*0.03,),
            const SettingCard(iconData: Icons.phone_in_talk,title: "Contact Support",),
            SizedBox(height: mediaQueryData.size.height*0.03,),
            const SettingCard(iconData: Icons.star,title: "Rating & Reviews",),
            SizedBox(height: mediaQueryData.size.height*0.03,),
            const CardWithButton(iconData: Icons.lock_clock,title: "Incentives  ",),
            SizedBox(height: mediaQueryData.size.height*0.03,),
            const CardWithButton(iconData: Icons.notifications,title: "Notification",),
        
        
          ],
        ),
      ),
    );
  }
}
