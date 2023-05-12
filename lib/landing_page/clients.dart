import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '../util/utils.dart';
class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // clientsrkd (77:276)
        padding: EdgeInsets.fromLTRB(112*fem, 80*fem, 112*fem, 130*fem),
        width: double.infinity,
        height: 502.5*fem,
        decoration: BoxDecoration (
          gradient: LinearGradient (
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: <Color>[Color(0xff010208), Color(0xff010206), Color(0xff040008), Color(0xff010101), Color(0xff010101), Color(0xff010101), Color(0xff010101)],
            stops: <double>[0.164, 0.205, 0.248, 0.305, 0.341, 0.362, 1],
          ),
        ),
        child: Container(
          // clients5dP (77:277)
          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // someoftheclientsihavedesignedf (77:279)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 96*fem),
                constraints: BoxConstraints (
                  maxWidth: 511*fem,
                ),
                child: RichText(
                  text: TextSpan(
                    style: SafeGoogleFont (
                      'Work Sans',
                      fontSize: 40*ffem,
                      fontWeight: FontWeight.w300,
                      height: 1.5*ffem/fem,
                      color: Color(0xffffffff),
                    ),
                    children: [
                      TextSpan(
                        text: 'Some of',
                        style: SafeGoogleFont (
                          'Work Sans',
                          fontSize: 40*ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.5*ffem/fem,
                          color: Color(0x8ce3e4e6),
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                        style: SafeGoogleFont (
                          'Work Sans',
                          fontSize: 40*ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.5*ffem/fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                      TextSpan(
                        text: 'the clients I have\ndesigned for',
                        style: SafeGoogleFont (
                          'Work Sans',
                          fontSize: 40*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5*ffem/fem,
                          color: Color(0xffe3e4e6),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                // logosrZb (77:280)
                width: double.infinity,
                height: 60.5*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // airbnblogoC7f (77:281)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 134.52*fem, 0*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 194.5*fem,
                          height: 60.54*fem,
                          child: Image.asset(
                            'assets/portfolio/images/airbnb-logo-NVK.png',
                            width: 194.5*fem,
                            height: 60.54*fem,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      // googlelogoUL5 (77:282)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0.24*fem, 0.31*fem, 1.33*fem, 0.31*fem),
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // vectorBVP (I77:282;47:727)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.52*fem, 14.59*fem),
                              width: 44.78*fem,
                              height: 45.3*fem,
                              child: Image.asset(
                                'assets/portfolio/images/vector.png',
                                width: 44.78*fem,
                                height: 45.3*fem,
                              ),
                            ),
                            Container(
                              // vectortPo (I77:282;47:722)
                              margin: EdgeInsets.fromLTRB(0*fem, 1.55*fem, 2.34*fem, 0*fem),
                              width: 29.69*fem,
                              height: 29.17*fem,
                              child: Image.asset(
                                'assets/portfolio/images/vector-BCZ.png',
                                width: 29.69*fem,
                                height: 29.17*fem,
                              ),
                            ),
                            Container(
                              // vectorB81 (I77:282;47:723)
                              margin: EdgeInsets.fromLTRB(0*fem, 1.55*fem, 2.32*fem, 0*fem),
                              width: 29.69*fem,
                              height: 29.17*fem,
                              child: Image.asset(
                                'assets/portfolio/images/vector-XB3.png',
                                width: 29.69*fem,
                                height: 29.17*fem,
                              ),
                            ),
                            Container(
                              // vector6Vs (I77:282;47:724)
                              margin: EdgeInsets.fromLTRB(0*fem, 14.62*fem, 3.84*fem, 0*fem),
                              width: 28.37*fem,
                              height: 42.24*fem,
                              child: Image.asset(
                                'assets/portfolio/images/vector-42h.png',
                                width: 28.37*fem,
                                height: 42.24*fem,
                              ),
                            ),
                            Container(
                              // vectorCYu (I77:282;47:725)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.73*fem, 13.81*fem),
                              width: 6.34*fem,
                              height: 42.74*fem,
                              decoration: BoxDecoration (
                                color: Color(0x8ce3e4e6),
                              ),
                            ),
                            Container(
                              // vectorXLH (I77:282;47:726)
                              margin: EdgeInsets.fromLTRB(0*fem, 1.54*fem, 0*fem, 0*fem),
                              width: 27.3*fem,
                              height: 29.17*fem,
                              child: Image.asset(
                                'assets/portfolio/images/vector-3EM.png',
                                width: 27.3*fem,
                                height: 29.17*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // autogroupmxjpqbs (GV2jm5jBxaYyX5HsMpMxjP)
                      padding: EdgeInsets.fromLTRB(134.52*fem, 2.16*fem, 0*fem, 2.16*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // microsoftlogoxAh (77:283)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 134.52*fem, 0*fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.04*fem, 0*fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroup75jdRKB (GV2juFAFmYqsfXvqq975JD)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.79*fem, 0*fem),
                                      width: 26.75*fem,
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // vector9FB (I77:283;47:730)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.79*fem),
                                            width: double.infinity,
                                            height: 26.7*fem,
                                            decoration: BoxDecoration (
                                              color: Color(0x8ce3e4e6),
                                            ),
                                          ),
                                          Container(
                                            // vectorUHT (I77:283;47:732)
                                            width: double.infinity,
                                            height: 26.7*fem,
                                            decoration: BoxDecoration (
                                              color: Color(0x8ce3e4e6),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // autogroup9q2vE1j (GV2jyaNNXQqNX15oqS9q2V)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16.85*fem, 0*fem),
                                      width: 26.75*fem,
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // vector9eV (I77:283;47:731)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.79*fem),
                                            width: double.infinity,
                                            height: 26.7*fem,
                                            decoration: BoxDecoration (
                                              color: Color(0x8ce3e4e6),
                                            ),
                                          ),
                                          Container(
                                            // vectorVCZ (I77:283;47:733)
                                            width: double.infinity,
                                            height: 26.7*fem,
                                            decoration: BoxDecoration (
                                              color: Color(0x8ce3e4e6),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // vectorStV (I77:283;47:729)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.87*fem),
                                      width: 190.42*fem,
                                      height: 36.8*fem,
                                      child: Image.asset(
                                        'assets/portfolio/images/vector-EPw.png',
                                        width: 190.42*fem,
                                        height: 36.8*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // fedexlogomfs (77:284)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.27*fem, 0*fem, 0*fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 172.86*fem,
                                height: 52.13*fem,
                                child: Image.asset(
                                  'assets/portfolio/images/fedex-logo.png',
                                  width: 172.86*fem,
                                  height: 52.13*fem,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
          );
  }
}