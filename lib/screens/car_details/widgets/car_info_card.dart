import 'package:flutter/material.dart';
import 'package:car_view/extensions/relative_length.dart';

class CarInfoCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final int value;
  final double horizontal;
  CarInfoCard(
      {required this.icon,
      required this.iconColor,
      required this.title,
      required this.value,
      required this.horizontal});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffe6e6e6),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: horizontal.vw, vertical: 1.1.vh),
        child: Column(
          children: [
            Icon(
              icon,
              color: iconColor,
              size: 5.5.vw,
            ),
            Container(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 2.9.vw,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              child: Text(
                '$value',
                style: TextStyle(
                  fontSize: 3.4.vw,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
