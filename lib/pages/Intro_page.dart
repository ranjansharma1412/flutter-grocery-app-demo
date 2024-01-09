import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grossary_app_demo/pages/home.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(80, 80, 80, 10),
              child: Image.asset('lib/images/avocado.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8.0),
              child: Text(
                'We deliver grocery at doorstep',
                style: GoogleFonts.notoSerif(
                    fontSize: 28, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                  'Grocer gives you fresh vegetables and fruits, Order fresh item from Gro',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center),
            ),
            const Spacer(),
            GestureDetector(
              onTap: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
                return const Home();
              })),
              child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(30.5)),
                child: const Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
