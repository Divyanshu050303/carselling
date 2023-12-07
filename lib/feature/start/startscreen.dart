import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      "assets/car1.png",
      "assets/car2.png",
      "assets/car3.png",
      "assets/car4.png"
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
          Align(
            alignment: Alignment.centerRight,
            child: CarouselSlider(
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
                viewportFraction: 1,
                height: 270,
              ),
            ),
          ),

          SizedBox(height: mediaQueryData.size.height*0.15,),
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
