import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    // ResponsiveRowColumnItem(
    //         rowFlex: ResponsiveValue<int?>(context,
    //             defaultValue: null,
    //             valueWhen: [
    //               const Condition.smallerThan(name: DESKTOP, value: 1)
    //             ]).value,
    //         child: ),

    //ResponsiveWrapper.of(context).isLargerThan(MOBILE);

    // if (ResponsiveWrapper.of(context).isLargerThan(MOBILE))
    // ResponsiveGridView.builder(
    //   gridDelegate: const ResponsiveGridDelegate(
    //       crossAxisExtent: 260,
    //       mainAxisSpacing: 16,
    //       crossAxisSpacing: 16,
    //       childAspectRatio: 1.37),
    //   maxRowCount: 1,
    //   itemCount: favoritePackages.length,
    //   shrinkWrap: true,
    //   physics: const NeverScrollableScrollPhysics(),
    //   padding: const EdgeInsets.fromLTRB(4, 8, 0, 8),
    //   alignment: Alignment.center,
    //   itemBuilder: (context, index) {
    //     return PackageCard(package: favoritePackages[index]);
    //   },
    // ),

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Services we offer'),
        GridView.count(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            crossAxisCount: ResponsiveValue<int>(context,
                defaultValue: 2,
                conditionalValues: [
                  const Condition.largerThan(name: MOBILE, value: 3)
                ]).value!,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1.0,
            // ResponsiveValue<double>(context,
            //     defaultValue: 1.0,
            //     conditionalValues: [
            //       const Condition.smallerThan(name: DESKTOP, value: 0.75)
            //     ]).value!,
            children: [
              serviceItem(
                  context: context,
                  borderColor: const Color(0xff7D7E82),
                  title: 'UI & UX DESIGNING',
                  content:
                      'I design beautiful web iterfaces with Figma and Adove XD',
                  iconUrl: 'assets/images/ruler&pen.png'),
              serviceItem(
                  context: context,
                  borderColor: const Color(0xff5E50B2),
                  title: 'WEB DEVELOPMENT',
                  content:
                      'I create beautiful iterfaces with simple HTML, CSS, & JavaScript and also frameworks like Angular and ReactJS',
                  iconUrl: 'assets/images/code.png'),
              serviceItem(
                  context: context,
                  borderColor: const Color(0xff7D7E82),
                  title: 'MOBILE DEVELOPMENT',
                  content:
                      'I am an expert mobile developer. I have experience using Flutter and React Native.',
                  iconUrl: 'assets/images/android.png'),
              serviceItem(
                  context: context,
                  borderColor: const Color(0xff5E50B2),
                  title: 'VERSION CONTROL',
                  content:
                      'I can use version control systems well, and Git & Mecurial are my go-to tool.',
                  iconUrl: 'assets/images/git-repo.png'),
              serviceItem(
                  context: context,
                  borderColor: const Color(0xff7D7E82),
                  title: 'NPM AND NODEJS',
                  content:
                      'I have core understanding of NPM. I can also develop general purpose applications with NodeJS',
                  iconUrl: 'assets/images/javascript.png'),
              serviceItem(
                  context: context,
                  borderColor: const Color(0xff5E50B2),
                  title: 'WEB SCRAPING',
                  content:
                      'I have core understanding of NPM. I can also develop general purpose applications with NodeJS',
                  iconUrl: 'assets/images/slider.png')
            ])
      ],
    );
  }

  Widget serviceItem(
      {required BuildContext context,
      required Color borderColor,
      required String title,
      required String content,
      required String iconUrl}) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(10),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ConstrainedBox(
              //width: 72, height: 72,
              constraints: const BoxConstraints(maxHeight: 72, maxWidth: 72),
              child: Image.asset(
                iconUrl,
                color: const Color(0xff7D7E82),
              )),
          SizedBox(
            height: 15.w,
          ),
          Text(
            title,
            style: GoogleFonts.roboto(
                color: borderColor,
                fontSize: 20.sp,
                // ResponsiveValue<double>(context,
                //     defaultValue: 14,
                //     conditionalValues: [
                //       const Condition.largerThan(name: TABLET, value: 20)
                //     ]).value,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15.w,
          ),
          Text(
            content,
            style: GoogleFonts.roboto(
                fontSize: 16.sp,
                color: const Color(0xff7D7E82),
                height: ResponsiveValue<double>(context,
                    defaultValue: 1.0,
                    conditionalValues: [
                      const Condition.largerThan(name: TABLET, value: 1.5)
                    ]).value),
            textAlign: TextAlign.center,
          ),
        ],
      )),
    );
  }
}
