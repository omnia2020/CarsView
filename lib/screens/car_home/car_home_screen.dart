import 'package:car_view/screens/car_details/car_details_screen.dart';
import 'package:car_view/screens/car_details/widgets/car_types_widget.dart';
import 'package:car_view/screens/car_home/widgets/car_tiles_view.dart';
import 'package:car_view/screens/car_home/widgets/search_car.dart';
import 'package:car_view/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:car_view/extensions/relative_length.dart';

class CarHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 2.5.vh,
            ),
            Container(
              height: 30.0.vw,
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 1.05.vw, right: 1.05.vw),
                    child: CarTilesView(
                      photo: 'assets/images/car5.jpg',
                      name: 'جيلى',
                    ),
                  );
                },
              ),
            ),
            Container(
              child: Image.asset('assets/images/car6.jpg'),
            ),
            SizedBox(
              height: 2.5.vh,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 8.03.vw, right: 8.03.vw, bottom: 2.5.vh),
              child: SearchCar(),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 12.3.vw, right: 12.3.vw, bottom: 2.5.vh),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _carType('أسيوى'),
                  _carType('أوروبي'),
                  _carType('أمريكي'),
                ],
              ),
            ),
            Wrap(
              runSpacing: 8.5.vh,
              spacing: 1.2.vw,
              children: [
                CarTypesWidget(
                  kmCount: 20000,
                  photo: 'assets/images/car6.jpg',
                  price: '12700',
                  title: 'جي ام سي | بوكن | الفئة الرابعه',
                  verifiedAt: 2021,
                  year: 2019,
                  openCar: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => CarDetailsScreen()));
                  },
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
                CarTypesWidget(
                  kmCount: 20000,
                  photo: 'assets/images/car2.jpg',
                  price: '12700',
                  title: 'جي ام سي | بوكن | الفئة الرابعه',
                  verifiedAt: 2021,
                  year: 2019,
                  openCar: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => CarDetailsScreen()));
                  },
                ),
                CarTypesWidget(
                  kmCount: 20000,
                  photo: 'assets/images/car4.jpg',
                  price: '12700',
                  title: 'جي ام سي | بوكن | الفئة الرابعه',
                  verifiedAt: 2021,
                  year: 2019,
                  openCar: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => CarDetailsScreen()));
                  },
                ),
                CarTypesWidget(
                  kmCount: 20000,
                  photo: 'assets/images/car5.jpg',
                  price: '12700',
                  title: 'جي ام سي | بوكن | الفئة الرابعه',
                  verifiedAt: 2021,
                  year: 2019,
                  openCar: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => CarDetailsScreen()));
                  },
                ),
                CarTypesWidget(
                  kmCount: 20000,
                  photo: 'assets/images/car6.jpg',
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
            Container(
              child: Image.asset('assets/images/car5.jpg'),
            ),
            SizedBox(
              height: 3.5.vh,
            ),
          ],
        ),
      ),
    );
  }
}

_carType(String name) {
  return Container(
    decoration: BoxDecoration(
      color: Color(0xff42455C),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.5.vw, vertical: 0.9.vh),
      child: Text(
        name,
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}
