import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../util/utils.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    const Color navLinkColor = Color(0xFF6E7274);

    double baseWidth = 1472;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      height: 66,
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      //EdgeInsets.fromLTRB(16 * fem, 16 * fem, 16 * fem, 16 * fem),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff9747ff)),
        borderRadius: BorderRadius.circular(5 * fem),
      ),
      //  decoration: const BoxDecoration(color: Colors.white, boxShadow: [
      //   BoxShadow(color: Color(0x1A000000), offset: Offset(0, 2), blurRadius: 4)
      // ]),
      child: Row(
        children: [
          Image.asset(
            'assets/images/coollogo_com.png',
            width: 250,
            height: 66,
          ),
          const Spacer(),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text('HOME',
                    style: GoogleFonts.roboto(
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.5 * ffem / fem,
                    )),
              ),
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text('Showcase',
                    style:
                        GoogleFonts.roboto(fontSize: 14, color: navLinkColor)),
              ),
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text('About Me',
                    style:
                        GoogleFonts.roboto(fontSize: 14, color: navLinkColor)),
              ),
            ),
          ),
          ResponsiveVisibility(
            visible: false,
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
            visible: false,
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
