import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Selected Works',
            style: GoogleFonts.roboto(fontSize: 18, color: Colors.white),
          ),
          verticalSpace,
          portfolioItem(
              workImage: 'assets/images/col-1-JUm.png',
              workUrl: 'workUrl',
              imageFirst: true,
              title: 'Real estate Template',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ultrices lorem non feugiat egestas amet.'),
          verticalSpace,
          portfolioItem(
              workImage: 'assets/images/col-1-QFw.png',
              workUrl: 'workUrl',
              imageFirst: false,
              title: 'Plant identification app',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ultrices lorem non feugiat egestas amet.'),
          verticalSpace,
          portfolioItem(
              workImage: 'assets/images/col-1-Q53.png',
              workUrl: 'workUrl',
              imageFirst: true,
              title: 'Smart Home App',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ultrices lorem non feugiat egestas amet.'),
          verticalSpace,
          portfolioItem(
              workImage: 'assets/images/icon-e3f.png',
              workUrl: 'workUrl',
              imageFirst: false,
              title: 'Logo Animation',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ultrices lorem non feugiat egestas amet.'),
        ],
      ),
    );
  }

  portfolioItem(
      {required String workImage,
      required String workUrl,
      required bool imageFirst,
      required String title,
      required String description}) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 20,
      children: [
        if (imageFirst == true)
          Image.asset(
            workImage,
            fit: BoxFit.fill,
            // width: 594*fem,
            // height: 490*fem,
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
                  style: GoogleFonts.roboto(color: Colors.white, fontSize: 18)),
              const SizedBox(
                height: 20,
              ),
              // Content
              Text(
                description,
                style: GoogleFonts.roboto(
                    color: Colors.white, fontSize: 16, height: 2.0),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                onPressed: () => openUrl(workUrl),
                icon: const Icon(Icons.arrow_forward_ios_sharp, size: 14,),
                label: const Text('View Work', style: TextStyle(fontSize: 14),),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.centerRight),
              ),
            ],
          ),
        ),
        if (imageFirst == false)
          Image.asset(
            workImage,
            fit: BoxFit.fill,
            // width: 594*fem,
            // height: 490*fem,
          )
      ],
    );
  }
}
