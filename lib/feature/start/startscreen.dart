import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int _changeWithImage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(milliseconds: 3210), (Timer timer) {
      setState(() {
        _changeWithImage = _changeWithImage + 1;
        if (_changeWithImage == 4) {
          _changeWithImage = 0;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      "assets/images/car1.png",
      "assets/images/car3.png",
      "assets/images/car2.png",
      "assets/images/car4.png"
    ];
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: mediaQueryData.size.height * 0.1,
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                horizontal: mediaQueryData.size.width * 0.07,
              ),
              child: const Text(
                "Easy way to buy \nyour dream car",
                style: TextStyle(
                    fontSize: 38,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              )),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: mediaQueryData.size.width * 0.05,
              horizontal: mediaQueryData.size.width * 0.07,
            ),
            child: const Text(
              "By using the car, you can move quickly "
              "\nfrom one place to another "
              "\nin your daily life.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ),
          CarouselSlider(
            items: image.map(
              (i) {
                return Builder(
                  builder: (BuildContext context) => Image.asset(
                    i,
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                );
              },
            ).toList(),
            options: CarouselOptions(
              autoPlayInterval: const Duration(seconds: 3),
              autoPlay: true,
              viewportFraction: 1,
              height: 275,
            ),
          ),
          SizedBox(
            height: mediaQueryData.size.height * 0.08,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.fiber_manual_record,
                color: _changeWithImage == 0 ? Colors.black : Colors.grey,
                size: 16,
              ),
              Icon(Icons.fiber_manual_record,
                  color: _changeWithImage == 1 ? Colors.black : Colors.grey,
                  size: 16),
              Icon(Icons.fiber_manual_record,
                  color: _changeWithImage == 2 ? Colors.black : Colors.grey,
                  size: 16),
              Icon(Icons.fiber_manual_record,
                  color: _changeWithImage == 3 ? Colors.black : Colors.grey,
                  size: 16),
            ],
          ),
          SizedBox(
            height: mediaQueryData.size.height * 0.05,
          ),
          Center(
            child: Container(
              width: mediaQueryData.size.width * 0.8,
              height: mediaQueryData.size.height * 0.08,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(40),
              ),
              child: const Center(
                  child: Text(
                "Get Started",
                style: TextStyle(fontSize: 18, color: Colors.white),
              )),
            ),
          )
        ]));
  }
}
