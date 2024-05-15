import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motor_show_2024_app/views/introduction_screen.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    // Delay 3 second and open to IntroductionUI page
    Future.delayed(
        Duration(
            // days: 366,
            seconds: 3),
        // until 3 sec open to next page that you want
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => IntroductionUI(),
              ),
            ));

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Image.asset(
              'assets/images/logoAuto.jpg',
              width: MediaQuery.of(context).size.width * 0.35,
              height: MediaQuery.of(context).size.height * 0.35,
              
            ),
            Text(
              'Motor Show 2024',
              style: GoogleFonts.nabla(
                fontSize: MediaQuery.of(context).size.height * 0.045,
                color: Colors.black,
              ),
            ),
            Text(
              'THE MOBILITY OF JOYFUL EXPRERIENCES',
              style: GoogleFonts.nabla(
                fontSize: MediaQuery.of(context).size.height * 0.025,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            CircularProgressIndicator(
              color: Colors.black,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Text(
              'Created by 6552410002',
              style: GoogleFonts.kanit(
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text(
              'DTI SAU 2024',
              style: GoogleFonts.kanit(
                color: Colors.black,
              ),
            ),
//Version (opional)
            // Text(
            //   'Version 1.0.0',
            //   style: GoogleFonts.kanit(
            //     color: Colors.white,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
