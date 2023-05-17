import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ResponsiveVisibility(
          //     visible: false,
          //     visibleConditions: const [Condition.equals(name: MOBILE)],
          //     child: ClipRRect(
          //       borderRadius: BorderRadius.circular(10),
          //       child: Image.asset(
          //         'assets/images/cover-gJZ.png',
          //         fit: BoxFit.fill,
          //       ),
          //     )),
          Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('About me',
                        //toUpperCase(),
                        textAlign: TextAlign.left,
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          color: Colors.white,
                        )),
                    Container(
                      width: double.infinity,
                      height: 300.w,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/about-me.jpg',
                            fit: BoxFit.fill,
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'I am a mobile developer specialized in developing mobile applications for iOS and Android platforms using flutter. I have experience in developing mobile apps from scratch, as well as maintaining and updating existing applications. I am passionate about creating user-friendly and engaging mobile apps that provide a seamless user experience. I look forward to discussing any mobile development projects you may have in mind.',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.roboto(
                          fontSize: ResponsiveValue<double>(context,
                              defaultValue: 14,
                              conditionalValues: [
                                const Condition.equals(name: TABLET, value: 14),
                                const Condition.largerThan(
                                    name: MOBILE, value: 16)
                              ]).value!,
                          color: const Color(0xff7D7E82),
                          height: ResponsiveValue<double>(context,
                              defaultValue: 1.5,
                              conditionalValues: [
                                const Condition.largerThan(
                                    name: MOBILE, value: 2)
                              ]).value!),
                    ),
                  ],
                ),
              )),
          // ResponsiveVisibility(
          //   visible: false,
          //   visibleConditions: const [Condition.largerThan(name: MOBILE)],
          //   child: Expanded(
          //       flex: 1,
          //       child: Container(
          //         padding: const EdgeInsets.all(20),
          //         child: Image.asset(
          //           'assets/images/cover-gJZ.png',
          //           fit: BoxFit.fill,
          //         ),
          //       )),
          // ),
          // ResponsiveVisibility(
          //   visible: false,
          //   visibleConditions: const [Condition.largerThan(name: MOBILE)],
          //   child: Expanded(
          //       flex: 1,
          //       child: Column(
          //         mainAxisSize: MainAxisSize.min,
          //         children: [
          //           Image.asset(
          //             'assets/images/cover-dSm.png',
          //             fit: BoxFit.fill,
          //           ),
          //           const SizedBox(
          //             height: 20,
          //           ),
          //           Image.asset(
          //             'assets/images/cover-3jj.png',
          //             fit: BoxFit.fill,
          //           )
          //         ],
          //       )),
          // )
        ],
      ),
    );
  }
}
