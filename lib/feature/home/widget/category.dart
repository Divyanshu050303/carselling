import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return  Container(
      width: mediaQueryData.size.width,
      height: mediaQueryData.size.height*0.17,
      color: Colors.black12,
    );
  }
}
