import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // double baseWidth = 1440;
    // double fem = MediaQuery.of(context).size.width / baseWidth;
    // double ffem = fem * 0.97;
    return Container(
      height: 300,
      padding: const EdgeInsets.all(50),
      child: Center(
        child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: GoogleFonts.mate(
                    fontSize: 30, color: const Color(0xff7D7E82), height: 2.0),
                children: [
                  const TextSpan(
                      text: 'I’m a mobile developer specialising in '),
                  TextSpan(
                      text: 'Hybrid ',
                      style: GoogleFonts.mate(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                  const TextSpan(text: 'Mobile App development with '),
                  TextSpan(
                      text: 'Flutter',
                      style: GoogleFonts.mate(
                          fontWeight: FontWeight.bold, color: Colors.white))
                ])),
      ),
    );

    // Container(
    //   // homegff (77:258)
    //   padding: EdgeInsets.fromLTRB(112*fem, 24*fem, 112*fem, 57*fem),
    //   width: double.infinity,
    //   decoration: const BoxDecoration (
    //     gradient: LinearGradient (
    //       begin: Alignment(0, -1),
    //       end: Alignment(0, 1),
    //       colors: <Color>[Color(0xff010208), Color(0xff010206), Color(0xff040008), Color(0xff010101), Color(0xff010101), Color(0xff010101), Color(0xff010101)],
    //       stops: <double>[0.164, 0.205, 0.248, 0.305, 0.341, 0.362, 1],
    //     ),
    //   ),
    //   child: Container(
    //     // imadesignerspecialisinginuiuxa (77:261)
    //     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 249*fem),
    //     constraints: BoxConstraints (
    //       maxWidth: 992*fem,
    //     ),
    //     child: RichText(
    //       textAlign: TextAlign.center,
    //       text: TextSpan(
    //         style: SafeGoogleFont (
    //           'Work Sans',
    //           fontSize: 56*ffem,
    //           fontWeight: FontWeight.w600,
    //           height: 1.5*ffem/fem,
    //           letterSpacing: -1.12*fem,
    //           color: const Color(0xffffffff),
    //         ),
    //         children: [
    //           TextSpan(
    //             text: 'I’m a designer specialising in',
    //             style: SafeGoogleFont (
    //               'Work Sans',
    //               fontSize: 56*ffem,
    //               fontWeight: FontWeight.w300,
    //               height: 1.5*ffem/fem,
    //               letterSpacing: -1.12*fem,
    //               color: const Color(0x8ce3e4e6),
    //             ),
    //           ),
    //           TextSpan(
    //             text: ' ',
    //             style: SafeGoogleFont (
    //               'Work Sans',
    //               fontSize: 56*ffem,
    //               fontWeight: FontWeight.w300,
    //               height: 1.5*ffem/fem,
    //               letterSpacing: -1.12*fem,
    //               color: const Color(0xbfffffff),
    //             ),
    //           ),
    //           TextSpan(
    //             text: 'UI/UX',
    //             style: SafeGoogleFont (
    //               'Work Sans',
    //               fontSize: 56*ffem,
    //               fontWeight: FontWeight.w600,
    //               height: 1.5*ffem/fem,
    //               letterSpacing: -1.12*fem,
    //               color: const Color(0xffe3e4e6),
    //             ),
    //           ),
    //           TextSpan(
    //             text: ' ',
    //             style: SafeGoogleFont (
    //               'Work Sans',
    //               fontSize: 56*ffem,
    //               fontWeight: FontWeight.w600,
    //               height: 1.5*ffem/fem,
    //               letterSpacing: -1.12*fem,
    //               color: const Color(0xffffffff),
    //             ),
    //           ),
    //           TextSpan(
    //             text: 'and',
    //             style: SafeGoogleFont (
    //               'Work Sans',
    //               fontSize: 56*ffem,
    //               fontWeight: FontWeight.w300,
    //               height: 1.5*ffem/fem,
    //               letterSpacing: -1.12*fem,
    //               color: const Color(0x8ce3e4e6),
    //             ),
    //           ),
    //           TextSpan(
    //             text: ' ',
    //             style: SafeGoogleFont (
    //               'Work Sans',
    //               fontSize: 56*ffem,
    //               fontWeight: FontWeight.w300,
    //               height: 1.5*ffem/fem,
    //               letterSpacing: -1.12*fem,
    //               color: const Color(0xffffffff),
    //             ),
    //           ),
    //           TextSpan(
    //             text: 'Interaction Design',
    //             style: SafeGoogleFont (
    //               'Work Sans',
    //               fontSize: 56*ffem,
    //               fontWeight: FontWeight.w600,
    //               height: 1.5*ffem/fem,
    //               letterSpacing: -1.12*fem,
    //               color: const Color(0xffe3e4e6),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
