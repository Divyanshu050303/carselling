import 'package:carselling/feature/home/widget/appbar.dart';
import 'package:carselling/feature/home/widget/carslist.dart';
import 'package:carselling/feature/home/widget/category.dart';
import 'package:carselling/feature/home/widget/searchbox.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          SizedBox(height: mediaQueryData.size.height*0.07,),
          AppBar1(),
          SizedBox(height: mediaQueryData.size.height*0.03,),
          SearchBoxs(),
          SizedBox(height: mediaQueryData.size.height*0.02,),
          Category(),
          SizedBox(height: mediaQueryData.size.height*0.05,),
          CarList()
        ],
      ),
    );
  }
}
