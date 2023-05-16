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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Text(
            'Area of Expertise',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
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
                  title: 'PIXEL PERFECT UI',
                  iconUrl: 'assets/images/ui.png'),
              serviceItem(
                  context: context,
                  borderColor: const Color(0xff5E50B2),
                  title: 'API INTEGRATION',
                  iconUrl: 'assets/images/api.png'),
              serviceItem(
                  context: context,
                  borderColor: const Color(0xff7D7E82),
                  title: 'BLOC STATE MANAGEMENT',
                  iconUrl: 'assets/images/bloc.png'),
              serviceItem(
                  context: context,
                  borderColor: const Color(0xff5E50B2),
                  title: 'VERSION CONTROL',
                  iconUrl: 'assets/images/git.png'),
              serviceItem(
                  context: context,
                  borderColor: const Color(0xff7D7E82),
                  title: 'FIREBASE',
                  iconUrl: 'assets/images/firebase.png'),
              serviceItem(
                  context: context,
                  borderColor: const Color(0xff5E50B2),
                  title: 'CI/CD',
                  iconUrl: 'assets/images/cicd.png')
            ])
      ],
    );
  }

  Widget serviceItem(
      {required BuildContext context,
      required Color borderColor,
      required String title,
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
          Expanded(
            child: Container(
                padding: EdgeInsets.all(20.w),
                // width: 100.w,
                // height: 100.w,
                //constraints: const BoxConstraints(maxHeight: 72, maxWidth: 72),
                child: Image.asset(
                  iconUrl,
                  //color: const Color(0xff7D7E82),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              title,
              style: GoogleFonts.roboto(
                  color: borderColor,
                  fontSize: ResponsiveValue<double>(context,
                      defaultValue: 12,
                      conditionalValues: [
                        const Condition.equals(name: TABLET, value: 14),
                        const Condition.largerThan(name: TABLET, value: 20)
                      ]).value,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      )),
    );
  }
}
