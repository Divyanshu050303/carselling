import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return SizedBox(
      width: mediaQueryData.size.width,
      height: mediaQueryData.size.height * 0.235,
      child: Column(
        children: [
          Hero(
            flightShuttleBuilder: (
              flightContext,
              animation,
              flightDirection,
              fromHeroContext,
              toHeroContext,
            ) {
              switch (flightDirection) {
                case HeroFlightDirection.push:
                  return Material(
                    color: Colors.transparent,
                    child: ScaleTransition(
                      scale: animation.drive(
                        Tween<double>(
                          begin: 0.0,
                          end: 1.0,
                        ).chain(
                          CurveTween(
                            curve: Curves.fastOutSlowIn,
                          ),
                        ),
                      ),
                      child: toHeroContext.widget,
                    ),
                  );
                case HeroFlightDirection.pop:
                  return Material(
                    color: Colors.transparent,
                    child: fromHeroContext.widget,
                  );
              }
            },
            tag: "ProfilePicture",
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: mediaQueryData.size.height * 0.075,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(45,),
                  child:Image.asset("assets/images/divyanshu.png",fit: BoxFit.fill,)),
            ),
          ),
          SizedBox(
            height: mediaQueryData.size.height * 0.02,
          ),
          const Text(
            "Divyanshu Singh",
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 22,
                color: Colors.black,
                decoration: TextDecoration.none),
          ),
          const Text(
            "Bmw owner ",
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                color: Colors.grey,
                decoration: TextDecoration.none),
          )
        ],
      ),
    );
  }
}
