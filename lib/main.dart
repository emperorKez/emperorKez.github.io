import 'package:flutter/material.dart';
import 'package:portfolio/route.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'landing_page/landing_screen.dart';

void main() {
  runApp(const WebPortfolio());
}

class WebPortfolio extends StatelessWidget {
  const WebPortfolio({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveBreakpoints.builder(child: child!, breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ]),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: (RouteSettings settings) {
          return Routes.fadeThrough(settings: settings, page: (BuildContext context) { 
            return MaxWidthBox(maxWidth: 1100, 
            background: Container(color: const Color(0xffe5e5e5),),
            child: ResponsiveScaledBox(width: ResponsiveValue<double>(context, conditionalValues: [
              const Condition.equals(name: MOBILE, value: 450),
              const Condition.between(
                                  start: 800, end: 1100, value: 800),
                              const Condition.between(
                                  start: 1000, end: 1200, value: 1000),
            ]).value, child: BouncingScrollWrapper.builder(context, buildPage(settings.name ?? ''))));
           });
          
        },
      //title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      //home: const LandingScreen(),
    );
  }

   Widget buildPage(String name) {
    switch (name) {
      case '/':
        return const LandingScreen();
      default:
        return const SizedBox.shrink();
    }
  }
}

