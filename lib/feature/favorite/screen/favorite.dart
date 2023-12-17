import 'dart:ffi';

import 'package:carselling/feature/favorite/widgets/appBar.dart';
import 'package:carselling/feature/favorite/widgets/favroiteCard.dart';
import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return  Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey.shade300,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: mediaQueryData.size.height*0.04,),
            const AppBarFav(),
            const FavoriteCard()
          ],
        ),
      ),
    );
  }
}
