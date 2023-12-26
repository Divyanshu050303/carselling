import 'package:carselling/feature/favorite/screen/favorite.dart';
import 'package:carselling/feature/home/screen/home.dart';
import 'package:carselling/feature/setting/screen/setting.dart';
import 'package:flutter/material.dart';
class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> with TickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController=TabController(length: 3, vsync: this);
    tabController.addListener(() {
      setState(() {
        selectedIndex=tabController.index;
      });
    });

  }
  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return    DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding:  EdgeInsets.only(
            left: 20,
              right: 20,
              bottom: mediaQueryData.size.height*0.04),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(20)),
            width: mediaQueryData.size.width * 0.4,
            height: mediaQueryData.size.height * 0.08,
            child:   TabBar(

              controller: tabController,
              tabs:   [
                Tab(icon: Icon(selectedIndex==0?Icons.home:Icons.home_outlined,color: Colors.white )),
                Tab(icon: Icon(selectedIndex==1?Icons.favorite:Icons.favorite_border,color: Colors.white  )),
                Tab(icon: Icon(selectedIndex==2?Icons.settings:Icons.settings_outlined,color: Colors.white )),
              ],
              indicatorColor: Colors.black87,
            ),
          ),
        ),

        body:   TabBarView(
          controller: tabController,
          children: [
            HomeScreen(),
            Favorite(),
            Setting()
          ],
        ),
      ),

    );
  }
}


