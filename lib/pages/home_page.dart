// imports
import 'package:firebase_database/firebase_database.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import '../components/navbar.dart';
import '../components/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final stream = FirebaseDatabase.instance.ref('/Sensor').onValue;

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      // app bar
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: IconButton(
              onPressed: () {
                scaffoldKey.currentState?.openDrawer();
              },
              icon: Icon(Icons.menu, color: primaryColor, size: 32),
            )),
        title: Text(
          "Air Guard",
          style: GoogleFonts.kronaOne(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: primaryColor,
          ),
        ),
      ),
      // nav bar
      drawer: const NavBar(),
      // main part
      body: SingleChildScrollView(
        // Wrap with SingleChildScrollView
        child: Column(
          children: [
            // firebase fetch data
            StreamBuilder(
              stream: stream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final data = snapshot.data?.snapshot.value as Map?;
                  if (data == null) {
                    return const Text('No data');
                  }
                  final mq2 = data['MQ-2'];
                  final mq135 = data['MQ-135'];
                  final mq8 = data['MQ-8'];
                  final mq7 = data['MQ-7'];
                  final humidity = data['Humidity'];
                  final temp = data['Temperature'];
                  return Column(
                    children: [
                      //humid + temp = icon
                      Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [primaryColor, secondaryColor]),
                              borderRadius: BorderRadius.circular(20)),
                          margin: const EdgeInsets.symmetric(horizontal: 25),
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Good Morning,",
                                    style: GoogleFonts.jost(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  //image
                                  Image.asset('assets/images/7.png',
                                      width: 175.0),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            '$humidity%',
                                            style: GoogleFonts.jost(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(height: 10.0),
                                          Text(
                                            'humidity',
                                            style: GoogleFonts.jost(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(width: 40),
                                      Column(
                                        children: [
                                          Text(
                                            '$temp°C',
                                            style: GoogleFonts.jost(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(height: 10.0),
                                          Text(
                                            'temperature',
                                            style: GoogleFonts.jost(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          )),
                      const SizedBox(height: 15),
                      // air quality box
                      SizedBox(
                        height: 375,
                        child: GridView.count(
                          physics: const NeverScrollableScrollPhysics(),
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: introColor,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              height: 20,
                              child: Center(
                                  child: Text(
                                "CO2 Levels \n $mq135 \n ppm",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.jost(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: introColor,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: Text(
                                "CO Levels \n $mq7 \n ppm",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.jost(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: introColor,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: Text(
                                "CH4 Levels \n $mq2 \n ppm",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.jost(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: introColor,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: Text(
                                "H2 Levels \n $mq8 \n ppm",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.jost(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                }
                if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                }
                return const Text(' ');
              },
            )
          ],
        ),
      ),
    );
  }
}
