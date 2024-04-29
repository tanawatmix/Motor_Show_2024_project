import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:motor_show_2024_app/views/home_ui.dart';

class IntroductionUI extends StatefulWidget {
  const IntroductionUI({super.key});

  @override
  State<IntroductionUI> createState() => _IntroductionUIState();
}

class _IntroductionUIState extends State<IntroductionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 150, bottom: 10),
        child: IntroductionScreen(
          scrollPhysics: BouncingScrollPhysics(),
          // autoScrollDuration: 2000,
          pages: [
            //toyota
            PageViewModel(
              titleWidget: Text(
                "Toyota 2000GT",
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              image: Image.asset(
                "assets/images/TOYOTA_2000GT.jpg",
                height: MediaQuery.of(context).size.height * 0.7,
              ),
              bodyWidget: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pellentesque mattis faucibus. Vestibulum ultricies nec enim eu lacinia.'),
            ),
            //honda
            PageViewModel(
              titleWidget: Text(
                "Honda 1300 Classic",
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              image: Image.asset(
                "assets/images/honda1300Classic.jpg",
                height: MediaQuery.of(context).size.height * 0.9,
              ),
              bodyWidget: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pellentesque mattis faucibus. Vestibulum ultricies nec enim eu lacinia.'),
            ),
            //mitsubishi
            PageViewModel(
              titleWidget: Text(
                "Nissan GT-R Nismo 2020",
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              image: Image.asset(
                "assets/images/nissanGTRismo2020.jpg",
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              bodyWidget: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pellentesque mattis faucibus. Vestibulum ultricies nec enim eu lacinia.'),
            ),
            //mazda
            PageViewModel(
              titleWidget: Text(
                "Mazda RX-7 ",
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              image: Image.asset("assets/images/mazdaRx7.jpg"),
              bodyWidget: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pellentesque mattis faucibus. Vestibulum ultricies nec enim eu lacinia.'),
            ),
          ],
          showSkipButton: true,
          skip: Text(
            "ข้าม",
            style: GoogleFonts.kanit(
              color: Colors.black,
            ),
          ),
          onSkip: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeUI(),
            ),
          ),
          dotsDecorator: DotsDecorator(
            size: Size(MediaQuery.of(context).size.width * 0.015,
                MediaQuery.of(context).size.width * 0.015),
            color: Colors.grey,
            activeSize: Size(MediaQuery.of(context).size.width * 0.025,
                MediaQuery.of(context).size.width * 0.025),
            activeColor: Colors.black,
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
          ),
          next: Icon(
            Icons.arrow_forward,
            color: Colors.black,
          ),
          nextFlex: 0,
          done: Text(
            "เริ่มต้น",
            style: GoogleFonts.kanit(
              color: Colors.black,
            ),
          ),
          onDone: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeUI(),
            ),
          ),
        ),
      ),
    );
  }
}
