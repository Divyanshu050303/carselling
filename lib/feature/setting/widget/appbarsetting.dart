import 'package:flutter/material.dart';

class AppBars extends StatelessWidget {
  const AppBars({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return Padding(
      padding:   EdgeInsets.only(right: mediaQueryData.size.width*0.4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
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
          SizedBox(width: mediaQueryData.size.width*0.05,),
          const Text(
            "Setting",
            style: TextStyle(
              fontFamily: "Roboto",
                color: Colors.black,
                fontSize: 20,
                decoration: TextDecoration.none),
          ),


        ],
      ),
    );
  }
}
