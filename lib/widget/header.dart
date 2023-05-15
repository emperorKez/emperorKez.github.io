import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../util/utils.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    const Color navLinkColor = Color(0xFF6E7274);
    return Container(
      height: 66,
      width: double.infinity,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff9747ff)),
        borderRadius: BorderRadius.circular(10),
      ),
      //  decoration: const BoxDecoration(color: Colors.white, boxShadow: [
      //   BoxShadow(color: Color(0x1A000000), offset: Offset(0, 2), blurRadius: 4)
      // ]),
      child: Row(
        children: [
          Image.asset(
            'assets/images/coollogo_com.png',
            fit: BoxFit.fill,
            width: ResponsiveValue<double>(context,
                defaultValue: 200,
                conditionalValues: [
                  const Condition.largerThan(name: MOBILE, value: 250)
                ]).value!,
            height: 46,
          ),
          const Spacer(),
          ResponsiveVisibility(
              visible: false,
              visibleConditions: const [Condition.largerThan(name: MOBILE)],
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text('HOME',
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                        )),
                  ),
                ),
              )),
          ResponsiveVisibility(
              visible: false,
              visibleConditions: const [Condition.largerThan(name: MOBILE)],
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text('Showcase',
                        style: GoogleFonts.roboto(
                            fontSize: 14, color: navLinkColor)),
                  ),
                ),
              )),
          ResponsiveVisibility(
              visible: true,
              visibleConditions: const [Condition.largerThan(name: MOBILE)],
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text('About Me',
                        style: GoogleFonts.roboto(
                            fontSize: 14, color: navLinkColor)),
                  ),
                ),
              )),
          ResponsiveVisibility(
            visible: true,
            visibleConditions: const [Condition.largerThan(name: MOBILE)],
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => openUrl('https://github.com/emperorkez'),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: ImageIcon(
                      AssetImage("assets/images/icon_github_64x.png"),
                      color: navLinkColor,
                      size: 24),
                ),
              ),
            ),
          ),
          ResponsiveVisibility(
            visible: true,
            visibleConditions: const [Condition.largerThan(name: MOBILE)],
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => openUrl('https://linkedin.com/emperorkez'),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: ImageIcon(AssetImage("assets/images/linkedin.png"),
                      color: navLinkColor, size: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
