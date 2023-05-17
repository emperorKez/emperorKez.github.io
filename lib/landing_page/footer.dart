import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/utils.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          RichText(
              text: TextSpan(
                  style: GoogleFonts.workSans(
                      fontSize: 22, color: const Color(0xff7D7E82)),
                  children: [
                const TextSpan(text: 'Get '),
                TextSpan(
                    text: 'in Touch.',
                    style: GoogleFonts.workSans(
                        fontWeight: FontWeight.bold, color: Colors.white))
              ])),
          // const SizedBox(
          //   height: 15,
          // ),
          Text('So that we can talk more about...',
              style:
                  GoogleFonts.workSans(fontSize: 14, color: const Color(0xff7D7E82))),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () => makePhoneCall(),
                    icon: const Icon(
                      Icons.local_phone_sharp,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () => sendEmail(),
                    icon: const Icon(
                      Icons.mail,
                      color: Colors.white,
                    )),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => openUrl('https://github.com/emperorkez'),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: ImageIcon(
                          AssetImage("assets/images/icon_github_64x.png"),
                          color: Colors.white,
                          size: 24),
                    ),
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => openUrl('https://twitter.com/jk_dazzler'),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: ImageIcon(
                          AssetImage("assets/images/icon_twitter_64x.png"),
                          color: Colors.white,
                          size: 24),
                    ),
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => openUrl('https://linkedin.com/emperorkez'),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: ImageIcon(AssetImage("assets/images/linkedin.png"),
                          color: Colors.white, size: 24),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          Text('Built with Flutter by emperorKez',
              style:
                  GoogleFonts.workSans(fontSize: 14, color: const Color(0xff7D7E82))),
        ],
      ),
    );

    // return Container(
    //   width: double.infinity,
    //   child: Container(
    //     // footerBBj (77:378)
    //     padding: EdgeInsets.fromLTRB(540 * fem, 81 * fem, 540 * fem, 45 * fem),
    //     width: double.infinity,
    //     height: 460 * fem,
    //     decoration: BoxDecoration(
    //       gradient: LinearGradient(
    //         begin: Alignment(0, -1),
    //         end: Alignment(0, 1),
    //         colors: <Color>[
    //           Color(0xff010208),
    //           Color(0xff010206),
    //           Color(0xff040008),
    //           Color(0xff010101),
    //           Color(0xff010101),
    //           Color(0xff010101),
    //           Color(0xff010101)
    //         ],
    //         stops: <double>[0.164, 0.205, 0.248, 0.305, 0.341, 0.362, 1],
    //       ),
    //     ),
    //     child: Container(
    //       // wrappermfj (77:379)
    //       width: double.infinity,
    //       height: double.infinity,
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           Container(
    //             // contentWNR (77:380)
    //             margin:
    //                 EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 84 * fem),
    //             width: double.infinity,
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
    //                 Container(
    //                   // titledescription3NM (77:381)
    //                   margin: EdgeInsets.fromLTRB(
    //                       9 * fem, 0 * fem, 9 * fem, 60 * fem),
    //                   width: double.infinity,
    //                   child: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.center,
    //                     children: [
    //                       Container(
    //                         // getintoucha7P (77:383)
    //                         margin: EdgeInsets.fromLTRB(
    //                             0 * fem, 0 * fem, 0 * fem, 4 * fem),
    //                         child: RichText(
    //                           textAlign: TextAlign.center,
    //                           text: TextSpan(
    //                             style: SafeGoogleFont(
    //                               'Work Sans',
    //                               fontSize: 56 * ffem,
    //                               fontWeight: FontWeight.w300,
    //                               height: 1.5 * ffem / fem,
    //                               letterSpacing: -1.12 * fem,
    //                               color: Color(0xffffffff),
    //                             ),
    //                             children: [
    //                               TextSpan(
    //                                 text: 'Get',
    //                                 style: SafeGoogleFont(
    //                                   'Work Sans',
    //                                   fontSize: 56 * ffem,
    //                                   fontWeight: FontWeight.w300,
    //                                   height: 1.5 * ffem / fem,
    //                                   letterSpacing: -1.12 * fem,
    //                                   color: Color(0x8ce3e4e6),
    //                                 ),
    //                               ),
    //                               TextSpan(
    //                                 text: ' ',
    //                                 style: SafeGoogleFont(
    //                                   'Work Sans',
    //                                   fontSize: 56 * ffem,
    //                                   fontWeight: FontWeight.w300,
    //                                   height: 1.5 * ffem / fem,
    //                                   letterSpacing: -1.12 * fem,
    //                                   color: Color(0xffffffff),
    //                                 ),
    //                               ),
    //                               TextSpan(
    //                                 text: 'in Touch.',
    //                                 style: SafeGoogleFont(
    //                                   'Work Sans',
    //                                   fontSize: 56 * ffem,
    //                                   fontWeight: FontWeight.w600,
    //                                   height: 1.5 * ffem / fem,
    //                                   letterSpacing: -1.12 * fem,
    //                                   color: Color(0xffe3e4e6),
    //                                 ),
    //                               ),
    //                             ],
    //                           ),
    //                         ),
    //                       ),
    //                       Text(
    //                         // descriptionBeu (77:384)
    //                         'So that we can talk more about...',
    //                         textAlign: TextAlign.center,
    //                         style: SafeGoogleFont(
    //                           'Work Sans',
    //                           fontSize: 18 * ffem,
    //                           fontWeight: FontWeight.w300,
    //                           height: 1.5 * ffem / fem,
    //                           color: Color(0xffe3e4e6),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //                 Container(
    //                   // socialmediavcV (77:385)
    //                   width: double.infinity,
    //                   child: Row(
    //                     crossAxisAlignment: CrossAxisAlignment.center,
    //                     children: [
    //                       TextButton(
    //                         // mailfa5 (77:386)
    //                         onPressed: () {},
    //                         style: TextButton.styleFrom(
    //                           padding: EdgeInsets.zero,
    //                         ),
    //                         child: Container(
    //                           width: 48 * fem,
    //                           height: 48 * fem,
    //                           child: Image.asset(
    //                             'assets/portfolio/images/mail.png',
    //                             width: 48 * fem,
    //                             height: 48 * fem,
    //                           ),
    //                         ),
    //                       ),
    //                       SizedBox(
    //                         width: 56 * fem,
    //                       ),
    //                       TextButton(
    //                         // behancemND (77:387)
    //                         onPressed: () {},
    //                         style: TextButton.styleFrom(
    //                           padding: EdgeInsets.zero,
    //                         ),
    //                         child: Container(
    //                           width: 48 * fem,
    //                           height: 48 * fem,
    //                           child: Image.asset(
    //                             'assets/portfolio/images/behance-5Gy.png',
    //                             width: 48 * fem,
    //                             height: 48 * fem,
    //                           ),
    //                         ),
    //                       ),
    //                       SizedBox(
    //                         width: 56 * fem,
    //                       ),
    //                       TextButton(
    //                         // dribbleTVw (77:388)
    //                         onPressed: () {},
    //                         style: TextButton.styleFrom(
    //                           padding: EdgeInsets.zero,
    //                         ),
    //                         child: Container(
    //                           width: 48 * fem,
    //                           height: 48 * fem,
    //                           child: Image.asset(
    //                             'assets/portfolio/images/dribble-C3f.png',
    //                             width: 48 * fem,
    //                             height: 48 * fem,
    //                           ),
    //                         ),
    //                       ),
    //                       SizedBox(
    //                         width: 56 * fem,
    //                       ),
    //                       TextButton(
    //                         // linkedinMrD (77:389)
    //                         onPressed: () {},
    //                         style: TextButton.styleFrom(
    //                           padding: EdgeInsets.zero,
    //                         ),
    //                         child: Container(
    //                           width: 48 * fem,
    //                           height: 48 * fem,
    //                           child: Image.asset(
    //                             'assets/portfolio/images/linkedin-aMb.png',
    //                             width: 48 * fem,
    //                             height: 48 * fem,
    //                           ),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           RichText(
    //             // descriptiongtV (77:391)
    //             textAlign: TextAlign.center,
    //             text: TextSpan(
    //               style: SafeGoogleFont(
    //                 'Work Sans',
    //                 fontSize: 18 * ffem,
    //                 fontWeight: FontWeight.w300,
    //                 height: 1.5 * ffem / fem,
    //                 color: Color(0xffffffff),
    //               ),
    //               children: [
    //                 TextSpan(
    //                   text: 'Made with',
    //                   style: SafeGoogleFont(
    //                     'Work Sans',
    //                     fontSize: 18 * ffem,
    //                     fontWeight: FontWeight.w300,
    //                     height: 1.5 * ffem / fem,
    //                     color: Color(0x8ce3e4e6),
    //                   ),
    //                 ),
    //                 TextSpan(
    //                   text: ' ❣️ ',
    //                 ),
    //                 TextSpan(
    //                   text: 'by',
    //                   style: SafeGoogleFont(
    //                     'Work Sans',
    //                     fontSize: 18 * ffem,
    //                     fontWeight: FontWeight.w300,
    //                     height: 1.5 * ffem / fem,
    //                     color: Color(0x8ce3e4e6),
    //                   ),
    //                 ),
    //                 TextSpan(
    //                   text: ' ',
    //                   style: SafeGoogleFont(
    //                     'Work Sans',
    //                     fontSize: 18 * ffem,
    //                     fontWeight: FontWeight.w300,
    //                     height: 1.5 * ffem / fem,
    //                     color: Color(0xffe3e4e6),
    //                   ),
    //                 ),
    //                 TextSpan(
    //                   text: 'Srinivas Dezign',
    //                   style: SafeGoogleFont(
    //                     'Work Sans',
    //                     fontSize: 18 * ffem,
    //                     fontWeight: FontWeight.w600,
    //                     height: 1.5 * ffem / fem,
    //                     color: Color(0xffe3e4e6),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
