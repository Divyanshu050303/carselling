import 'package:carselling/feature/profile/widget/commonFunction.dart';
import 'package:carselling/feature/profile/widget/mycarCard.dart';
import 'package:flutter/material.dart';

class LowerCard extends StatelessWidget {
  const LowerCard({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      width: mediaQueryData.size.width,
      height: mediaQueryData.size.height * 0.605,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50), topLeft: Radius.circular(50))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 28.0, left: 26),
            child: Text(
              "Common Function",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: "Roboto",
                  decoration: TextDecoration.none),
            ),
          ),
          SizedBox(
            height: mediaQueryData.size.height * 0.03,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CommonFunction(
                iconData: Icons.engineering,
                title: "Maintain",
              ),
              CommonFunction(
                iconData: Icons.engineering,
                title: "Maintain",
              ),
              CommonFunction(
                iconData: Icons.engineering,
                title: "Maintain",
              )
            ],
          ),
          SizedBox(
            height: mediaQueryData.size.height * 0.03,
          ),
          const MyCarCard(
              iconData: Icons.directions_car_filled_rounded, title: "My Car"),
          SizedBox(
            height: mediaQueryData.size.height * 0.03,
          ),
          const MyCarCard(iconData: Icons.share, title: "Social media links"),
          SizedBox(
            height: mediaQueryData.size.height * 0.05,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: mediaQueryData.size.width * 0.89,
              height: mediaQueryData.size.height * 0.08,
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius:
                    BorderRadius.circular(mediaQueryData.size.width * 0.1),
              ),
              child: const Center(
                  child: Text(
                "Log Out",
                style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.none,
                    fontFamily: "Roboto",
                    color: Colors.white),
              )),
            ),
          )
        ],
      ),
    );
  }
}
