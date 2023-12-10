import 'package:flutter/material.dart';

class AppBar1 extends StatelessWidget {
  const AppBar1({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [

          CircleAvatar(
          radius: 30,
        child:  ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset("assets/images/divyanshu.png",fit: BoxFit.fill,)),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome 👋",style: TextStyle(fontSize:15 ),),
              Text("Divyanshu Singh", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
            ],
          ),
        ),
        Container(
          width:mediaQueryData.size.width*0.15 ,
          height: mediaQueryData.size.height*0.07,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: const Icon(Icons.notifications_none_outlined, color: Colors.black,),
        ),

      ],
    );
  }
}
