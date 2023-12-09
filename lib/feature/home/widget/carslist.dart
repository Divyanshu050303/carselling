import 'package:flutter/material.dart';

class CarList extends StatefulWidget {
  const CarList({super.key});

  @override
  State<CarList> createState() => _CarListState();
}

class _CarListState extends State<CarList> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return  Container(
      width: mediaQueryData.size.width,
      height: mediaQueryData.size.height*0.46,
      decoration:const  BoxDecoration(
        color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25),)
      ),
    );
  }
}
