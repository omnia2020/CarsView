import 'package:car_view/screens/car_details/car_details_screen.dart';
import 'package:car_view/screens/car_details/widgets/car_types_widget.dart';
import 'package:car_view/screens/car_details/widgets/info_widget.dart';
import 'package:flutter/material.dart';
import 'package:car_view/extensions/relative_length.dart';

class CarDetailsWidget extends StatelessWidget {
  final String title;
  final double price;
  final int kmCount;
  final String externalColor;
  final String internalColor;
  final String typeSit;
  final bool isOpen;
  final bool isCamera;
  final String sensors;
  final int engine;
  final bool isManual;
  final String about;
  CarDetailsWidget({
    required this.title,
    required this.about,
    required this.engine,
    required this.externalColor,
    required this.internalColor,
    required this.isCamera,
    required this.isManual,
    required this.isOpen,
    required this.kmCount,
    required this.price,
    required this.sensors,
    required this.typeSit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.only(left: 8.03.vw, right: 8.03.vw, bottom: 1.5.vh),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: TextDirection.rtl,
              children: [
                Container(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 3.5.vw,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    '$price د.ك',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 3.7.vw,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        _kmCounterWidget(kmCount),
        SizedBox(
          height: 2.5.vh,
        ),
        InfoWidget(
          title: 'اللون الخارجى',
          icon: Icons.car_repair_rounded,
          value: Text(externalColor),
        ),
        SizedBox(
          height: 0.5.vh,
        ),
        InfoWidget(
          title: 'اللون الداخلى',
          icon: Icons.car_rental,
          value: Text(internalColor),
        ),
        SizedBox(
          height: 0.5.vh,
        ),
        InfoWidget(
          title: 'نوع المقعد',
          icon: Icons.person,
          value: Text(typeSit),
        ),
        SizedBox(
          height: 0.5.vh,
        ),
        InfoWidget(
          title: 'فتحة سقف',
          icon: Icons.car_rental,
          value: isOpen ? Icon(Icons.check) : Icon(Icons.close),
        ),
        SizedBox(
          height: 0.5.vh,
        ),
        InfoWidget(
          title: 'كاميرا خلفية',
          icon: Icons.camera_alt_sharp,
          value: isCamera ? Icon(Icons.check) : Icon(Icons.close),
        ),
        SizedBox(
          height: 0.5.vh,
        ),
        InfoWidget(
          title: 'سينسور',
          icon: Icons.taxi_alert,
          value: Text(sensors),
        ),
        SizedBox(
          height: 0.5.vh,
        ),
        InfoWidget(
          title: ' سليندر',
          icon: Icons.countertops_sharp,
          value: Text('$engine'),
        ),
        SizedBox(
          height: 0.5.vh,
        ),
        InfoWidget(
          title: ' ناقل حركة',
          icon: Icons.move_to_inbox,
          value: isManual ? Text('مانوال') : Text('أوتوماتيك'),
        ),
        SizedBox(
          height: 2.5.vh,
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.5.vw, right: 4.5.vw, bottom: 3.5.vh),
          child: Container(
            alignment: Alignment.topRight,
            child: Text(about),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(left: 4.03.vw, right: 4.03.vw, bottom: 3.5.vh),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffdce6e8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.only(right: 2.5.vw, left: 2.5.vw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _circlePicWidget('assets/images/car4.jpg'),
                  Container(
                    child: Text('يوكن للسيارات المعتمده'),
                  ),
                  Container(
                    child: Text('كل السيارات'),
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarTypesWidget(
              kmCount: 20000,
              photo: 'assets/images/car1.jpg',
              price: '12700',
              title: 'جي ام سي | بوكن | الفئة الرابعه',
              verifiedAt: 2021,
              year: 2019,
               openCar: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => CarDetailsScreen()));
                  },
            ),
            SizedBox(
              width: 2.5.vw,
            ),
            CarTypesWidget(
              kmCount: 20000,
              photo: 'assets/images/car1.jpg',
              price: '12700',
              title: 'جي ام سي | بوكن | الفئة الرابعه',
              verifiedAt: 2021,
              year: 2019,
               openCar: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => CarDetailsScreen()));
                  },
            ),
          ],
        ),
        SizedBox(
          height: 9.5.vh,
        ),
      ],
    );
  }
}

_kmCounterWidget(int kmCount) {
  return Padding(
    padding: EdgeInsets.only(left: 6.03.vw, right: 6.03.vw),
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff853131),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 0.5.vh),
        child: Padding(
          padding: EdgeInsets.only(left: 3.5.vw, right: 3.5.vw),
          child: Row(
            children: [
              Icon(
                Icons.verified_user_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 2.5.vw,
              ),
              Container(
                child: Text(
                  'مكفولة حتى ' + '$kmCount كم',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

_circlePicWidget(String photo) {
  return Container(
    width: 50.0,
    height: 50.0,
    decoration: BoxDecoration(
      color: const Color(0xff7c94b6),
      image: DecorationImage(
        image: AssetImage(photo),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.all(Radius.circular(50.0)),
      border: Border.all(
        color: Colors.white,
        width: 4.0,
      ),
    ),
  );
}
