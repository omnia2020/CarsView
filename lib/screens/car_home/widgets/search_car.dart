import 'package:flutter/material.dart';

class SearchCar extends StatelessWidget {
  // final TextEditingController controller;
  // SearchCar({required this.controller});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey,
          width: 0.8,
        ),
      ),
      child: TextFormField(
        //controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'ابحث عن سيارتك',
          hintStyle: TextStyle(
            color: Colors.black,
          ),
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
