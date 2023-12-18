import 'package:carselling/feature/car_details/widget/CarFeature.dart';
import 'package:carselling/feature/car_details/widget/carImage.dart';
import 'package:flutter/material.dart';

import '../widget/appBar.dart';

class CarDetails extends StatefulWidget {
  final String imageString;
  const CarDetails({super.key, required this.imageString});

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return  Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey.shade200,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: mediaQueryData.size.height*0.04,),
            const CarDetailsAppBar(),
            SizedBox(height: mediaQueryData.size.height*0.04,),
              CarImage(imageString: widget.imageString,),
            const CarFeature()

          ],
        ),
      ),
    );
  }
}
