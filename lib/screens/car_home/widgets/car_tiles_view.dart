import 'package:flutter/material.dart';
import 'package:car_view/extensions/relative_length.dart';

class CarTilesView extends StatelessWidget {
  final String photo;
  final String name;

  CarTilesView({required this.photo, required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 15.0.vw,
          height: 15.0.vw,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: Colors.red,
              width: 2,
            ),
          ),
          child: Container(
            width: 10.0.vw,
            height: 10.0.vw,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                image: AssetImage(photo),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
            ),
          ),
        ),
        Container(
          child: Text(
            name,
            style: TextStyle(
                fontSize: 3.9.vw,
                color: Colors.black,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
