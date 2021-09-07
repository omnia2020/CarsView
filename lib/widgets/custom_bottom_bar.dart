import 'package:flutter/material.dart';
import 'package:car_view/extensions/relative_length.dart';

class CustomBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(left: 0.9.vw, right: 0.9.vw),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            textDirection: TextDirection.ltr,
            children: [
              _bookButton(true, () => null, Colors.white, Colors.black,
                  Icons.save, 'احجز السياره'),
              _bookButton(false, () => null, Colors.blueGrey, Colors.white,
                  Icons.location_on_outlined, 'موقع السياره'),
              _callButton(() => null, Color(0xffdbe5ff), Color(0xff323a8a),
                  Icons.message),
              _callButton(
                  () => null, Color(0xffe6fcde), Color(0xff268703), Icons.call)
            ],
          ),
        ),
      ),
    );
  }
}

_bookButton(bool isBook, Function() onTap, Color btnColor, Color textColor,
    IconData icon, String title) {
  return ElevatedButton(
    onPressed: onTap,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: textColor,
        ),
        SizedBox(
          width: 0.5.vw,
        ),
        Text(
          title,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ],
    ),
    style: ElevatedButton.styleFrom(
      elevation: 0.0,
      primary: isBook ? Colors.white : btnColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      side: isBook
          ? BorderSide(
              color: Colors.black,
              width: 1,
            )
          : null,
    ),
  );
}

_callButton(Function() onTap, Color btnColor, Color iconColor, IconData icon) {
  return InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(100),
    child: Container(
      width: 10.0.vw,
      height: 10.0.vw,
      decoration: BoxDecoration(
        color: btnColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Icon(
        icon,
        color: iconColor,
      ),
    ),
  );
  // return ElevatedButton(
  //   onPressed: onTap,
  //   child: Icon(
  //     icon,
  //     color: iconColor,
  //   ),
  //   style: ElevatedButton.styleFrom(
  //     elevation: 0.0,
  //     primary: btnColor,
  //     shape: CircleBorder(side: BorderSide.none),
  //   ),
  // );
}
