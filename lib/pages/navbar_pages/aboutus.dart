import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/navbar.dart';
import '../../components/colors.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/homepage');
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: primaryColor,
              size: 32,
            ),
          ),
        ),
        title: Text(
          "Air Guard",
          style: GoogleFonts.kronaOne(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: primaryColor,
          ),
        ),
      ),
      drawer: const NavBar(),
      body: SingleChildScrollView(
        // Wrap with SingleChildScrollView
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'About \nUs',
                      style: GoogleFonts.kronaOne(
                        fontSize: 40,
                        fontWeight: FontWeight.normal,
                        color: introColor,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  'Welcome to AirGuard,',
                  style: GoogleFonts.kronaOne(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: introColor,
                    height: 2,
                  ),
                ),
                Text(
                  'your trusted companion for real-time air quality monitoring. Our mission is to empower individuals and communities with the information they need to breathe easier and live healthier lives. At AirGuard, we utilize IoT devices and comprehensive data analysis to provide accurate and up-to-date air quality information right at your fingertips. Whether you’re concerned about pollution levels, allergens, or overall air quality, our app offers detailed insights and alerts to help you stay informed and make better environmental decisions. \n\nJoin us on our journey to create a cleaner, healthier world, one breath at a time.',
                  style: GoogleFonts.jost(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: introColor,
                    height: 2,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
            const SizedBox(height: 100),
            // Center(
            //   child: Container(
            //     height: 250,
            //     width: 250,
            //     child: Image.asset('assets/animations/aboutusanim.gif', fit: BoxFit.fill,),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
