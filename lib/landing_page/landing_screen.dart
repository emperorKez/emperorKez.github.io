import 'package:flutter/material.dart';
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
            const Condition.equals(name: MOBILE, value: EdgeInsets.symmetric(horizontal: 20)),
            const Condition.largerThan(name: TABLET, value: EdgeInsets.symmetric(horizontal: 50))
          ]).value,
          children: const [
            Header(),
            Home(),
            Services(),
            SizedBox(height: 20,),
            Showcase(),
            AboutMe(),
            Footer()

            // AboutSummary()
          ],
        ),
      ),
    );
  }
}
