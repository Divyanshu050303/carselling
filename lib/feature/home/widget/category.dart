import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {List<Map<String, String>> category = [
      {"name": "Audi", "image": "assets/images/audi.png"},
      {"name": "BMW", "image": "assets/images/bmw.png"},
      {"name": "Bugatti", "image": "assets/images/bugatti.png"},
      {"name": "Ferrari", "image": "assets/images/ferrari.png"},
      {"name": "Ford", "image": "assets/images/ford.png"},
      {"name": "Hyundai", "image": "assets/images/hyundi.png"},
      {"name": "Lamborghini", "image": "assets/images/lambo.png"},
      {"name": "Mahindra", "image": "assets/images/mahidra.png"},
      {"name": "Mercedes", "image": "assets/images/mercedes.png"},
      {"name": "porsche", "image": "assets/images/por.png"},
      {"name": "Supra", "image": "assets/images/supra.png"},
      {"name": "Toyota", "image": "assets/images/toyata.png"},
    ];
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return SizedBox(
        width: mediaQueryData.size.width,
        height: mediaQueryData.size.height * 0.1,
        child: ListView.builder(
            itemCount: category.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SizedBox(
                width: mediaQueryData.size.width * 0.22,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      child: Image.asset(
                        category[index]['image']!,
                      ),
                    ),
                    Text(
                      category[index]['name']!,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              );
            }));
  }
}
