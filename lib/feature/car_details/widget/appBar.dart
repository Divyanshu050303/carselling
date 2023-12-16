import 'package:flutter/material.dart';

class CarDetailsAppBar extends StatelessWidget {
  const CarDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return  Row(
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
        const Text(
          "Car Details",
          style: TextStyle(
            fontFamily: "Roboto",
              color: Colors.black,
              fontSize: 18,
              decoration: TextDecoration.none),
        ),
        Container(
          width: mediaQueryData.size.width * 0.13,
          height: mediaQueryData.size.height * 0.06,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Icon(
            Icons.favorite,
            color: Colors.black,
            size: 26,
          ),
        ),
      ],
    );
  }
}
