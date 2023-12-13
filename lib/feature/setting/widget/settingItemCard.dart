import 'package:flutter/material.dart';

class SettingCard extends StatefulWidget {
  const SettingCard({super.key});

  @override
  State<SettingCard> createState() => _SettingCardState();
}

class _SettingCardState extends State<SettingCard> {
  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.white,
        child:Row(
          children: [
            CircleAvatar(

                child: Icon(Icons.calendar_month_sharp, color: Colors.black,))
          ],
        )
    );
  }
}
