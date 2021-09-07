import 'package:car_view/screens/car_details/widgets/car_details.dart';
import 'package:car_view/screens/car_details/widgets/car_info_card.dart';
import 'package:car_view/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:car_view/extensions/relative_length.dart';

class CarDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.40,
                  child: Image.asset(
                    'assets/images/car2.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 4.5.vh,
                  left: 2.5.vw,
                  child: Row(
                    children: [
                      _circleButton(Icons.favorite_outline, () {
                        //todo add to fav
                        print('Added to favourite');
                      }),
                      SizedBox(
                        width: 1.9.vw,
                      ),
                      _circleButton(Icons.share_outlined, () {
                        print('Share to ....');
                      }),
                    ],
                  ),
                ),
                Positioned(
                  top: 4.5.vh,
                  right: 2.5.vw,
                  child: _circleButton(Icons.arrow_back, () {
                    //todo pop up
                    print('pop up');
                  }),
                ),
                Positioned(
                  bottom: -9.0.vh,
                  right: 12.03.vw,
                  left: 12.03.vw,
                  child: Row(
                    textDirection: TextDirection.ltr,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CarInfoCard(
                        icon: Icons.timer,
                        iconColor: Colors.orange,
                        title: 'الممشي',
                        value: 2000,
                        horizontal: 4.5,
                      ),
                      CarInfoCard(
                        icon: Icons.calendar_today,
                        iconColor: Colors.green,
                        title: 'سنة الصنع',
                        value: 2019,
                        horizontal: 4.5,
                      ),
                      CarInfoCard(
                        icon: Icons.motorcycle,
                        iconColor: Colors.blue,
                        title: 'المحرك/سلندر',
                        value: 6,
                        horizontal: 4.5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.5.vh,
            ),
            CarDetailsWidget(
              title: 'يوكن بحاله جيده',
              about:
                  'رنجات الومونيوم 18 انش اسود وكروم  - ديكور خشب + كروم - مقعد السائق كهربائى رنجات الومونيوم 18 انش اسود وكروم  - ديكور خشب + كروم - مقعد السائق كهربائى',
              engine: 6,
              externalColor: 'أبيض',
              internalColor: 'بيج',
              isCamera: true,
              isManual: false,
              isOpen: false,
              kmCount: 20000,
              price: 3800,
              sensors: 'أمامى - خلفى',
              typeSit: 'مخمل',
            ),
          ],
        ),
      ),
    );
  }
}

_circleButton(IconData icon, Function() onTap) {
  return CircleAvatar(
    backgroundColor: Colors.grey,
    child: IconButton(
      onPressed: onTap,
      icon: Icon(
        icon,
        color: Colors.black,
      ),
    ),
  );
}
