

import 'package:carselling/feature/car_details/screen/CarDetails.dart';
import 'package:flutter/material.dart';

class CarList extends StatefulWidget {
  const CarList({super.key});

  @override
  State<CarList> createState() => _CarListState();
}

class _CarListState extends State<CarList> {
  bool like=true;
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      width: mediaQueryData.size.width,
      height: mediaQueryData.size.height * 0.55,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          )),
      child: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 14.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular car",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                Text(
                  "View All",
                  style: TextStyle(fontWeight: FontWeight.w200, fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(
            height: mediaQueryData.size.height * 0.06,
          ),
          GridView.builder(
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const CarDetails()));
                    },
                    child: Container(
                      width: mediaQueryData.size.width * 0.12,
                      height: mediaQueryData.size.height * 0.25,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Stack(
                        children: [
                            Positioned(
                            top: 10,
                            left: 10,
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                   like = !like;
                                  print(like);
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  like?
                                  Icons.favorite:Icons.favorite_border,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Image.asset("assets/images/car2.png"),
                          Positioned(
                            top: mediaQueryData.size.height * 0.16,
                            left: mediaQueryData.size.width * 0.06,
                            child: const Text(
                              "data",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Positioned(
                            top: mediaQueryData.size.height * 0.185,
                            left: mediaQueryData.size.width * 0.06,
                            child:   Row(
                              children: [
                                const Text("\$45,590", style: TextStyle(fontWeight: FontWeight.w500),),
                                SizedBox(width: mediaQueryData.size.width*0.05,),
                                const Text("⭐ 4.6", style: TextStyle(fontWeight: FontWeight.w500),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
