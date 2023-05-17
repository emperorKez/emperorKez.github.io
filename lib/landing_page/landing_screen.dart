import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/landing_page/about-me.dart';
import 'package:portfolio/landing_page/home.dart';
import 'package:portfolio/landing_page/services.dart';
import 'package:portfolio/landing_page/showcase.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../widget/header.dart';
import 'footer.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('Device Size:${Size(1.sw, 1.sh)}');
    print('Device pixel density:${ScreenUtil().pixelRatio}');
    print('Bottom safe zone distance dp:${ScreenUtil().bottomBarHeight}dp');
    print('Status bar height dp:${ScreenUtil().statusBarHeight}dp');
    print('The ratio of actual width to UI design:${ScreenUtil().scaleWidth}');
    print(
        'The ratio of actual height to UI design:${ScreenUtil().scaleHeight}');
    print('System font scaling:${ScreenUtil().textScaleFactor}');
    print('0.5 times the screen width:${0.5.sw}dp');
    print('0.5 times the screen height:${0.5.sh}dp');
    print('Screen orientation:${ScreenUtil().orientation}');

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: <Color>[
              Color(0xff010208),
              Color(0xff010206),
              Color(0xff040008),
              Color(0xff010101),
              Color(0xff010101),
              Color(0xff010101),
              Color(0xff010101)
            ],
            stops: <double>[0.164, 0.205, 0.248, 0.305, 0.341, 0.362, 1],
          ),
        ),
        child: ListView(
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          padding: ResponsiveValue<EdgeInsets>(context,
              defaultValue: const EdgeInsets.symmetric(horizontal: 20),
              conditionalValues: [
                const Condition.equals(
                    name: MOBILE, value: EdgeInsets.symmetric(horizontal: 20)),
                const Condition.largerThan(
                    name: TABLET, value: EdgeInsets.symmetric(horizontal: 50))
              ]).value,
          children:  [
            const Header(),
            SizedBox(
              height: 20.w,
            ),
            const Home(),
            SizedBox(
              height: 40.w,
            ),
            const Services(),
            const SizedBox(
              height: 20,
            ),
            const Showcase(),
            const AboutMe(),
            const Footer()

            // AboutSummary()
          ],
        ),
      ),
    );
  }
}
