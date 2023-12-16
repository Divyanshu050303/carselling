import 'package:flutter/material.dart';

class CommonFunction extends StatelessWidget {
  final IconData iconData;
  final String title;
  const CommonFunction({super.key, required this.iconData, required this.title});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return Container(
      width: mediaQueryData.size.width*0.27,
      height: mediaQueryData.size.height*0.13,
      decoration: BoxDecoration(
        color:Colors.grey.shade200,
        borderRadius: BorderRadius.circular(25),
      ),
      child:   Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
       CircleAvatar(
         radius: 22,
         backgroundColor: Colors.white,
         child: Icon(iconData, color: Colors.black, ),
       ),
          SizedBox(height: 5,),
          Text(title,style: const TextStyle(
            color: Colors.black38, fontFamily: "Roboto",fontSize: 16,
            decoration: TextDecoration.none
          ),),
        ],
      ),
    );
  }
}
