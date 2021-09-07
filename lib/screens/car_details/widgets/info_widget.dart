import 'package:flutter/material.dart';
import 'package:car_view/extensions/relative_length.dart';

class InfoWidget extends StatelessWidget {
  final String title;
  final Widget value;
  final IconData icon;

  InfoWidget({
    required this.title,
    required this.icon,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.03.vw, right: 4.03.vw),
      child: Container(
        width: double.infinity,
        color: Color(0xffe6e6e6),
        child: Padding(
          padding: EdgeInsets.only(right: 2.5.vw, left: 12.5.vw),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 1.5.vh),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(
                      icon,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 1.5.vw,
                    ),
                    Container(
                      child: Text(
                        title,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: value,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
