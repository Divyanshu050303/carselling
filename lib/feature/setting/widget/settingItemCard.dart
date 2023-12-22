import 'package:flutter/material.dart';

class SettingCard extends StatefulWidget {
  final IconData iconData;
  final String title;
  const SettingCard({super.key, required this.iconData, required this.title});

  @override
  State<SettingCard> createState() => _SettingCardState();
}

class _SettingCardState extends State<SettingCard> {
  @override
  Widget build(BuildContext context) {
   MediaQueryData mediaQueryData=MediaQuery.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: mediaQueryData.size.width*0.89,
      height: mediaQueryData.size.height*0.08,
      decoration: BoxDecoration(
      color: Colors.white,
        borderRadius: BorderRadius.circular(mediaQueryData.size.width*0.1),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(1,3),
            blurRadius: 2,
            spreadRadius: 2

          )
        ]
      ),
      child: Row(
        children: [
          CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: Icon(widget.iconData, color: Colors.black,)),
          const SizedBox(width: 20,),
          Text(widget.title, style: const TextStyle(color: Colors.black, fontSize: 17, fontFamily: "Roboto",decoration: TextDecoration.none),),
        ],
      ),
    );
  }
}
