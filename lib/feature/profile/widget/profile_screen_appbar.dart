import 'package:carselling/NavBar.dart';
import 'package:carselling/feature/home/screen/home.dart';
import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: (){
            Navigator.pop(context, MaterialPageRoute(builder: (context)=> const NavBar()));
          },
          child: Container(
            width: mediaQueryData.size.width * 0.13,
            height: mediaQueryData.size.height * 0.06,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: mediaQueryData.size.width*0.1),
          child: const Text(
            "Profile",
            style: TextStyle(
              fontFamily: "Roboto",
                color: Colors.black,
                fontSize: 19,
                decoration: TextDecoration.none),
          ),
        ),
        Container(
          width: mediaQueryData.size.width * 0.13,
          height: mediaQueryData.size.height * 0.06,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Icon(
            Icons.search,
            color: Colors.black,
            size: 26,
          ),
        ),
      ],
    );
  }
}
