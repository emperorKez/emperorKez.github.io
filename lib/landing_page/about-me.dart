import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('A bit about me'.toUpperCase(),
                    textAlign: TextAlign.left,
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          color: Colors.white,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'I am a UI/UX designer who is passionate about creating beautiful and joyful digital experiences. Besides design, I love music, games and travelling. ',
                      textAlign: TextAlign.left,
                      style:
                          GoogleFonts.roboto(fontSize: 16, color: Colors.white, height: 2),
                    ),
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Image.asset(
                  'assets/images/cover-gJZ.png',
                  fit: BoxFit.fill,
                ),
              )),
          Expanded(
              flex: 1,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/cover-dSm.png',
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'assets/images/cover-3jj.png',
                    fit: BoxFit.fill,
                  )
                ],
              ))
        ],
      ),
    );
  }
}
