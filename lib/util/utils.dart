import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

// Future<bool> openUrl(String url, {bool newWindow = false}) async {
//   if (await canLaunch(url)) {
//     return await launch(
//       url,
//     );
//   } else {
//     debugPrint("Could not launch $url");
//     return false;
//   }
// }

Future<void> openUrl( String url) async {
final Uri _url = Uri.parse(url);
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }


  // final Uri launchUri = Uri(
  //   scheme: 'https',
  //   path: url
  // );
  // await launchUrl(launchUri);
}

  Future<void> sendEmail() async {
    final Uri launchUri = Uri(
      scheme: 'mailto',
      path: 'emperorkez@gmail.com',
    );
    await launchUrl(launchUri);
  }

  Future<void> makePhoneCall() async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: '2348062905976',
    );
    await launchUrl(launchUri); 
  }



// TextStyle SafeGoogleFont(
//   String fontFamily, {
//   TextStyle? textStyle,
//   Color? color,
//   Color? backgroundColor,
//   double? fontSize,
//   FontWeight? fontWeight,
//   FontStyle? fontStyle,
//   double? letterSpacing,
//   double? wordSpacing,
//   TextBaseline? textBaseline,
//   double? height,
//   Locale? locale,
//   Paint? foreground,
//   Paint? background,
//   List<Shadow>? shadows,
//   List<FontFeature>? fontFeatures,
//   TextDecoration? decoration,
//   Color? decorationColor,
//   TextDecorationStyle? decorationStyle,
//   double? decorationThickness,
// }) {
//   try {
//     return GoogleFonts.getFont(
//       fontFamily,
//       textStyle: textStyle,
//       color: color,
//       backgroundColor: backgroundColor,
//       fontSize: fontSize,
//       fontWeight: fontWeight,
//       fontStyle: fontStyle,
//       letterSpacing: letterSpacing,
//       wordSpacing: wordSpacing,
//       textBaseline: textBaseline,
//       height: height,
//       locale: locale,
//       foreground: foreground,
//       background: background,
//       shadows: shadows,
//       fontFeatures: fontFeatures,
//       decoration: decoration,
//       decorationColor: decorationColor,
//       decorationStyle: decorationStyle,
//       decorationThickness: decorationThickness,
//     );
//   } catch (ex) {
//     return GoogleFonts.getFont(
//       "Source Sans Pro",
//       textStyle: textStyle,
//       color: color,
//       backgroundColor: backgroundColor,
//       fontSize: fontSize,
//       fontWeight: fontWeight,
//       fontStyle: fontStyle,
//       letterSpacing: letterSpacing,
//       wordSpacing: wordSpacing,
//       textBaseline: textBaseline,
//       height: height,
//       locale: locale,
//       foreground: foreground,
//       background: background,
//       shadows: shadows,
//       fontFeatures: fontFeatures,
//       decoration: decoration,
//       decorationColor: decorationColor,
//       decorationStyle: decorationStyle,
//       decorationThickness: decorationThickness,
//     );
//   }
//}
