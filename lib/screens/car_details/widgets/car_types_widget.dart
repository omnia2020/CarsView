import 'package:car_view/screens/car_details/widgets/car_info_card.dart';
import 'package:flutter/material.dart';
import 'package:car_view/extensions/relative_length.dart';

class CarTypesWidget extends StatelessWidget {
  final String title;
  final String photo;
  final int verifiedAt;
  final int kmCount;
  final int year;
  final String price;
  final Function() openCar;

  CarTypesWidget({
    required this.title,
    required this.photo,
    required this.kmCount,
    required this.price,
    required this.verifiedAt,
    required this.year,
    required this.openCar,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: openCar,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        color: Color(0xffe6e6e6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(title),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 20.5.vh,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        photo,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -5.0.vh,
                  child: Row(
                    textDirection: TextDirection.ltr,
                    children: [
                      CarInfoCard(
                        icon: Icons.verified_user_outlined,
                        iconColor: Colors.black,
                        title: 'مكفولة لـ',
                        value: verifiedAt,
                        horizontal: 0.6,
                      ),
                      CarInfoCard(
                        icon: Icons.timer,
                        iconColor: Colors.orange,
                        title: 'كم',
                        value: kmCount,
                        horizontal: 0.6,
                      ),
                      CarInfoCard(
                        icon: Icons.calendar_today_sharp,
                        iconColor: Colors.green,
                        title: 'سنة الصنع',
                        value: year,
                        horizontal: 0.6,
                      ),
                      CarInfoCard(
                        icon: Icons.money,
                        iconColor: Colors.blue,
                        title: 'السعر',
                        value: int.parse(price),
                        horizontal: 0.6,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
