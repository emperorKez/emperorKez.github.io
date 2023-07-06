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
              workUrl:
                  'https://play.google.com/store/apps/details?id=com.buzymart',
              imageFirst: true,
              title: 'Online Shopping Mobile App',
              description:
                  'An online shopping app that enables users to browse and purchase products with their mobile devices, provide a seamless and user-friendly experience, making it easy for users to find what they\'re looking for.',
              context: context),
          verticalSpace,
          portfolioItem(
              workImage: 'assets/images/buzymart-seller.png',
              workUrl:
                  'https://play.google.com/store/apps/details?id=com.buzymart.seller',
              imageFirst: false,
              title: 'Online Shopping Mall Seller app',
              description:
                  'An App that allows sellers to manage their online store on-the-go, upload product listings, manage orders, track inventory, communicate with customers, and receive payments with sleek and simplified user-friendly interface',
              context: context),
          verticalSpace,
          portfolioItem(
              workImage: 'assets/images/dating-app.png',
              workUrl: 'https://github.com/emperorKez/flutterDatingAppUI',
              imageFirst: true,
              title: 'Online Dating Mobile App',
              description:
                  'An online dating platform that allows users to create a profile, set their dating preferences, browse through other user profiles, and connect with potential romantic partners.',
              context: context),
          verticalSpace,
          portfolioItem(
              workImage: 'assets/images/todo-app.png',
              workUrl: 'https://github.com/emperorKez/flutter_todo_App.git',
              imageFirst: false,
              title: 'Todo Mobile App',
              description:
                  'A productivity app that allows users to create and manage their daily tasks and to-do lists. The app helps users to organize and prioritize their tasks, set reminders and deadlines, and track their progress',
              context: context),
          portfolioItem(
              workImage: 'assets/images/music_app.png',
              workUrl: 'https://github.com/emperorKez/music_app',
              imageFirst: true,
              title: 'Music App',
              description:
                  'A music app designed to provide a platform for listening to, organizing, and discovering music on mobile devices such as smartphones. The app allow users to access a vast library of songs and create personalized playlists',
              context: context),
          portfolioItem(
              workImage: 'assets/images/fintech_app.png',
              workUrl: 'https://github.com/emperorKez/fintech_app',
              imageFirst: false,
              title: 'Fintech Payment App UI',
              description:
                  'A payment application that enables users to make financial transactions and payments using their smartphones with features that make it easier for users to send and receive money, pay bills, make online purchases',
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
      childAspectRatio: 1.4,
      children: [
        if (imageFirst == true)
          Padding(
            padding: const EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                workImage,
                fit: BoxFit.fill,
              ),
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
                hiddenConditions: const [Condition.smallerThan(name: TABLET)],
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
                                  name: TABLET, value: 14),
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
                  size: 12,
                ),
                label: const Text(
                  'View Work',
                  style: TextStyle(fontSize: 12),
                ),
                style: TextButton.styleFrom(
                    // foregroundColor: const Color(0xff5E50B2),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Color(0xff7D7E82)),
                        borderRadius: BorderRadius.circular(25)),
                    padding: EdgeInsets.all(15.w),
                    alignment: Alignment.centerRight),
              ),
            ],
          ),
        ),
        if (imageFirst == false)
          Padding(
            padding: const EdgeInsets.all(20),
            child: AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    workImage,
                    fit: BoxFit.fill,
                  )),
            ),
          )
      ],
    );
  }
}
