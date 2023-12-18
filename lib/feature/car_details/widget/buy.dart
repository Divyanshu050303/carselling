import 'package:flutter/material.dart';

class BuyRow extends StatelessWidget {
  const BuyRow({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return Row(
      children: [
        SizedBox(width: mediaQueryData.size.width*0.06,),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Price",
              style: TextStyle(
                  fontFamily: "Roboto",
                  color: Colors.black,
                  fontSize: 16,
                  decoration: TextDecoration.none),
            ),
            Text(
              "46,500",
              style: TextStyle(
                  fontFamily: "Roboto",
                  color: Colors.black,
                  fontSize: 18,
                  decoration: TextDecoration.none),
            ),
          ],
        ),
        SizedBox(width: mediaQueryData.size.width*0.15,),
         Container(
           width:mediaQueryData.size.width*0.58 ,
           height: mediaQueryData.size.height*0.07,
           decoration: BoxDecoration(
             color: Colors.black87,
             borderRadius: BorderRadius.circular(30),
           ),
           child: const Center(
             child: Text(
               "Buy now",
               style: TextStyle(
                   color: Colors.white,
                   decoration: TextDecoration.none,
                   fontSize: 20,
                   fontFamily: "Roboto"),
             ),
           ),
         )
      ],
    );
  }
}
