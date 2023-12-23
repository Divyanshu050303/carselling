import 'package:carselling/feature/car_details/widget/FeatureCard.dart';
import 'package:carselling/feature/car_details/widget/buy.dart';
import 'package:flutter/material.dart';

class CarFeature extends StatefulWidget {
  const CarFeature({super.key});

  @override
  State<CarFeature> createState() => _CarFeatureState();
}

class _CarFeatureState extends State<CarFeature> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      width: mediaQueryData.size.width,
      height: mediaQueryData.size.height * 0.6,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(25), topLeft: Radius.circular(25)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: mediaQueryData.size.height * 0.04,
          ),
          Row(
            children: [
              SizedBox(
                width: mediaQueryData.size.width * 0.06,
              ),
              const Text(
                "Tesla Model 3",
                style: TextStyle(
                    fontFamily: "Roboto",
                    color: Colors.black,
                    fontSize: 24,
                    decoration: TextDecoration.none),
              ),
              SizedBox(
                width: mediaQueryData.size.width * 0.2,
              ),
              const Text(
                "⭐ (4.5)",
                style: TextStyle(
                    fontFamily: "Roboto",
                    color: Colors.black,
                    fontSize: 22,
                    decoration: TextDecoration.none),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: mediaQueryData.size.width * 0.06, vertical: 10),
            child: const Text(
              "Tesla Model 3 comes in 3 versions with 1 fuel type (Electric )"
              " and 1 transmission option (Automatic (e-CVT) ). Model 3 base "
              "version Performance estimated price is ₹ 80.23 Lakh. It comes "
              "with a Electric engine and Automatic (e-CVT) transmission."
              " Model 3 top model price in Delhi is estimated to be ",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.none,
                  fontSize: 16,
                  fontFamily: "Roboto"),
            ),
          ),
          SizedBox(
            height: mediaQueryData.size.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(left: mediaQueryData.size.width * 0.06),
            child: const Text(
              "Feature",
              style: TextStyle(
                  fontFamily: "Roboto",
                  color: Colors.black,
                  fontSize: 22,
                  decoration: TextDecoration.none),
            ),
          ),
          SizedBox(
            height: mediaQueryData.size.height * 0.02,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FeatureCard(
                iconData: Icons.event_seat_outlined,
                title1: "Total Capacity",
                title2: "6 seats",
              ),
              FeatureCard(
                iconData: Icons.speed,
                title1: "Highest Speed",
                title2: "200 KM/H",
              ),
              FeatureCard(
                iconData: Icons.bolt,
                title1: "Engine Output",
                title2: "500 HP",
              ),
            ],
          ),
          SizedBox(height: mediaQueryData.size.height*0.04,),
          const BuyRow()
        ],
      ),
    );
  }
}
