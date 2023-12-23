
import 'package:flutter/material.dart';

class CarImage extends StatelessWidget {
  final String imageString;
  const CarImage({super.key, required this.imageString});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return  SizedBox(
      width: mediaQueryData.size.width,
      height:mediaQueryData.size.height*0.32 ,
      child: Image.asset(imageString, fit: BoxFit.fill,),
    );
  }
}
