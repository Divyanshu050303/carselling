import 'package:flutter/material.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({super.key});


  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> fav = [
      {"name": "Audi", "image": "assets/images/car1.png"},
      {"name": "BMW", "image": "assets/images/car3.png"},
      {"name": "Bugatti", "image": "assets/images/car2.png"},
      {"name": "Ferrari", "image": "assets/images/car4.png"},
      {"name": "Ford", "image": "assets/images/car1.png"},
      {"name": "Hyundai", "image": "assets/images/car3.png"},
      {"name": "Lamborghini", "image": "assets/images/car4.png"},
      {"name": "Mahindra", "image": "assets/images/car2.png"},
    ];
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      width: mediaQueryData.size.width,
      height: mediaQueryData.size.height * 0.851,
      child: Stack(children: [
        ListView.builder(
            itemCount: fav.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
                child: Container(
                  width: mediaQueryData.size.width * 0.8,
                  height: mediaQueryData.size.height * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                      fav[index]['image']!,
                        width: 150,
                        height: 140,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(height: mediaQueryData.size.height*0.05,),
                              Text(
                              fav[index]['name']! ,
                            style: const TextStyle(
                              fontFamily: 'Roboto',
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.none),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: mediaQueryData.size.height*0.006,),
                          const Text(
                            "Price: \$ 45,35",
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                                fontSize: 16),
                          ),
                          SizedBox(height: mediaQueryData.size.height*0.006,),
                          const Row(
                            children: [
                              Text(
                                "⭐4.5",
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 14),
                              ),
                              Text(
                                "(250 review)",
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.grey,
                                    decoration: TextDecoration.none,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(height: mediaQueryData.size.height*0.01,),
                          Row(
                            children: [
                              ElevatedButton(
                                  onPressed: () {},style: ButtonStyle(
                                backgroundColor:MaterialStateColor.resolveWith((states) => Colors.black,),
                                elevation: MaterialStateProperty.all(8.0),
                                minimumSize: MaterialStateProperty.all(Size(50, 40)),
                              ),
                                  child:  const  Text(
                                    "Buy now",
                                    style: TextStyle(fontFamily: 'Roboto',color: Colors.white),
                                  ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                child: const Icon(
                                  Icons.favorite,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      ]),
    );
  }
}
