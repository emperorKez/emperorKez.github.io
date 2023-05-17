import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../util/utils.dart';

class Showcase extends StatelessWidget {
  const Showcase({super.key});

  @override
  Widget build(BuildContext context) {
    final verticalSpace = SizedBox(
        height: ResponsiveValue<double>(context,
            defaultValue: 20,
            conditionalValues: [
          const Condition.largerThan(name: MOBILE, value: 50)
        ]).value!);
    return Container(
      padding: ResponsiveValue<EdgeInsets>(context,
          defaultValue: const EdgeInsets.symmetric(vertical: 10),
          conditionalValues: [
            const Condition.largerThan(
                name: MOBILE, value: EdgeInsets.symmetric(vertical: 20))
          ]).value!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Selected Works',
            style: GoogleFonts.roboto(fontSize: 18, color: Colors.white),
          ),
          verticalSpace,
          portfolioItem(
              workImage: 'assets/images/buzymart.png',
              workUrl: 'workUrl',
              imageFirst: true,
              title: 'Online Shopping Mobile App',
              description:
                  'An online shopping platform that enables users to browse and purchase products from the convenience of their mobile devices, provide a seamless and user-friendly experience, making it easy for users to find what they\'re looking for.',
              context: context),
          verticalSpace,
          portfolioItem(
              workImage: 'assets/images/buzymart-seller.png',
              workUrl:
                  'https://play.google.com/store/apps/details?id=com.buzymart.seller',
              imageFirst: false,
              title: 'Online Shopping Mall Seller app',
              description:
                  'An App that allows sellers to manage their online store on-the-go, upload product listings, manage orders, track inventory, communicate with customers, and receive payments. It provides a user-friendly interface that simplifies the process of managing an online store.',
              context: context),
          verticalSpace,
          portfolioItem(
              workImage: 'assets/images/col-1-Q53.png',
              workUrl: 'workUrl',
              imageFirst: true,
              title: 'Online Dating Mobile App',
              description:
                  'An online dating platform that allows users to create a profile, set their dating preferences, browse through other user profiles, and connect with potential romantic partners.',
              context: context),
          verticalSpace,
          portfolioItem(
              workImage: 'assets/images/todo-app.png',
              workUrl: 'workUrl',
              imageFirst: false,
              title: 'Todo Mobile App',
              description:
                  'A productivity app that allows users to create and manage their daily tasks and to-do lists. The app helps users to organize and prioritize their tasks, set reminders and deadlines, and track their progress',
              context: context),
        ],
      ),
    );
  }

  portfolioItem(
      {required BuildContext context,
      required String workImage,
      required String workUrl,
      required bool imageFirst,
      required String title,
      required String description}) {
    return GridView.count(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 20,
      children: [
        if (imageFirst == true)
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              workImage,
              fit: BoxFit.fill,
            ),
          ),
        Container(
          padding: const EdgeInsets.all(10),
          //color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              // title
              Text(title,
                  style:
                      // TextStyle(
                      //     fontSize: 18.sp,
                      //     fontWeight: FontWeight.bold,
                      //     color: Colors.white)
                      GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: ResponsiveValue<double>(context,
                              defaultValue: 14,
                              conditionalValues: [
                                const Condition.smallerThan(
                                    name: TABLET, value: 12),
                                const Condition.largerThan(
                                    name: TABLET, value: 18)
                              ]).value!)),
              // const SizedBox(
              //   height: 20,
              // ),

              // Content
              ResponsiveVisibility(
                visible: true,
                hiddenConditions: [const Condition.smallerThan(name: TABLET)],
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    description,
                    style: GoogleFonts.roboto(
                        color: const Color(0xff7D7E82),
                        fontSize: ResponsiveValue<double>(context,
                            defaultValue: 10,
                            conditionalValues: [
                              const Condition.largerThan(
                                  name: TABLET, value: 16),
                              const Condition.equals(name: TABLET, value: 12)
                            ]).value!,
                        height: ResponsiveValue<double>(context,
                            defaultValue: 1,
                            conditionalValues: [
                              const Condition.largerThan(
                                  name: TABLET, value: 1.8),
                              const Condition.equals(name: TABLET, value: 1.0),
                              const Condition.equals(name: MOBILE, value: 0.8)
                            ]).value!),
                  ),
                ),
              ),
              // SizedBox(
              //   height: ResponsiveValue<double>(context,
              //       defaultValue: 10,
              //       conditionalValues: [
              //         const Condition.largerThan(name: MOBILE, value: 20)
              //       ]).value!,
              // ),
              TextButton.icon(
                onPressed: () => openUrl(workUrl),
                icon: const Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 14,
                ),
                label: const Text(
                  'View Work',
                  style: TextStyle(fontSize: 12),
                ),
                style: TextButton.styleFrom(
                    foregroundColor: const Color(0xff5E50B2),
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Color(0xff7D7E82)),
                        borderRadius: BorderRadius.circular(25)),
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.centerRight),
              ),
            ],
          ),
        ),
        if (imageFirst == false)
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                workImage,
                fit: BoxFit.fill,
              ))
      ],
    );
  }
}
