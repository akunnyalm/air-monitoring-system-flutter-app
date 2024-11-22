import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/colors.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});
  

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
        padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
        child: GestureDetector(
          onTap:() {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Text(
                'Settings',
                style: GoogleFonts.jost(
                  fontSize: 35,
                  fontWeight: FontWeight.bold, 
                  color: introColor                 
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'General',
                style: GoogleFonts.jost(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: introColor
                ),
              ),
              ListTile(
                leading: const Icon(Icons.map_outlined,),
                title: Text(
                  'Location Services',
                  style:GoogleFonts.jost(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                onTap:() {
                  
                },
              ),
              const SizedBox(height: 20),
              ListTile(
                leading: const Icon(Icons.display_settings_outlined),
                title: Text(
                  'Appearance',
                  style:GoogleFonts.jost(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                onTap:() {
                  
                },
              ),
              const SizedBox(height: 20),
              ListTile(
                leading: const Icon(Icons.language_outlined),
                title: Text(
                  'Language',
                  style:GoogleFonts.jost(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                onTap:() {
                  
                },
              ),
              const SizedBox(height: 20),
              ListTile(
                leading: const Icon(Icons.notifications_active_outlined),
                title: Text(
                  'Notification',
                  style:GoogleFonts.jost(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                onTap:() {
                  
                },
              ),
              const Divider(),
              const SizedBox(height: 20),
              Text(
                'Support',
                style: GoogleFonts.jost(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: introColor
                ),
              ),
              const SizedBox(height: 20),
              ListTile(
                leading: const Icon(Icons.report_problem_outlined),
                title: Text(
                  'Report an issue',
                  style:GoogleFonts.jost(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                onTap:() {
                  
                },
              ),
              const SizedBox(height: 20),
              ListTile(
                leading: const Icon(Icons.question_answer_outlined),
                title: Text(
                  'FAQ',
                  style:GoogleFonts.jost(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                onTap:() {
                  
                },
              ),
            ],
          ),
        ),        
      ),
    );
  }
}