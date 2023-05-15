import 'package:flutter/material.dart';
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
            crossAxisCount: ResponsiveValue<int>(context,
                defaultValue: 3,
                conditionalValues: [
                  const Condition.smallerThan(name: MOBILE, value: 2)
                ]).value!,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            children: [
              serviceItem(
                  borderColor: Color(0xff7D7E82),
                  title: 'UI & UX DESIGNING',
                  content:
                      'I design beautiful web iterfaces with Figma and Adove XD',
                  iconUrl: 'assets/images/ruler&pen.png'),
              serviceItem(
                  borderColor: const Color(0xff5E50B2),
                  title: 'WEB DEVELOPMENT',
                  content:
                      'I create beautiful iterfaces with simple HTML, CSS, & JavaScript and also frameworks like Angular and ReactJS',
                  iconUrl: 'assets/images/code.png'),
              serviceItem(
                  borderColor: Color(0xff7D7E82),
                  title: 'MOBILE DEVELOPMENT',
                  content:
                      'I am an expert mobile developer. I have experience using Flutter and React Native.',
                  iconUrl: 'assets/images/android.png'),
              serviceItem(
                  borderColor: const Color(0xff5E50B2),
                  title: 'VERSION CONTROL',
                  content:
                      'I can use version control systems well, and Git & Mecurial are my go-to tool.',
                  iconUrl: 'assets/images/git-repo.png'),
              serviceItem(
                  borderColor: Color(0xff7D7E82),
                  title: 'NPM AND NODEJS',
                  content:
                      'I have core understanding of NPM. I can also develop general purpose applications with NodeJS',
                  iconUrl: 'assets/images/javascript.png'),
              serviceItem(
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
      {required Color borderColor,
      required String title,
      required String content,
      required String iconUrl}) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(20),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 72, height: 72, child: Image.asset(iconUrl, color: Color(0xff7D7E82),)),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: GoogleFonts.roboto(
                color: borderColor, fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            content,
            style: GoogleFonts.roboto(
                fontSize: 16, color: Color(0xff7D7E82), height: 1.5),
            textAlign: TextAlign.center,
          ),
        ],
      )),
    );
  }
}
