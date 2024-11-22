import 'package:airguard/components/buttons.dart';
import 'package:airguard/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: introColor,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // app title
              SizedBox(
                width: 250.0,
                height: 150.0,           
                  child: Text(
                    "Air Guard",
                    style: GoogleFonts.kronaOne(
                    fontSize: 40,
                    color: Colors.white,                       
                    ),
                  )
              ),

              // button
              MyButton(
                text: "Get Started",
                onTap: () {
                  // go to home page
                  Navigator.pushNamed(context, '/homepage');
                },
              )
            ],
          )
        ),
      ),
    );
  }
}