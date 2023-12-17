import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  final IconData iconData;
  final String title1;
  final String title2;

  const FeatureCard({
    super.key,
    required this.iconData,
    required this.title1,
    required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      width: mediaQueryData.size.width * 0.28,
      height: mediaQueryData.size.width * .36,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                iconData,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              title1,
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  decoration: TextDecoration.none,
                  fontFamily: "Roboto"),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              title2,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  decoration: TextDecoration.none,
                  fontFamily: "Roboto"),
            ),
          ],
        ),
      ),
    );
  }
}
