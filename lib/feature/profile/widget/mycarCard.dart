import 'package:flutter/material.dart';

class MyCarCard extends StatelessWidget {
  final IconData iconData;
  final String title;
  const MyCarCard({super.key, required this.iconData, required this.title});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: mediaQueryData.size.width*0.89,
        height: mediaQueryData.size.height*0.08,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(mediaQueryData.size.width*0.1),
        ),
        child: Row(
          children: [
            CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon( iconData, color: Colors.black,)),
            const SizedBox(width: 20,),
            Text( title, style: const TextStyle(color: Colors.black, fontSize: 17, fontFamily: "Roboto",decoration: TextDecoration.none),),
          ],
        ),
      ),
    );
  }
}
