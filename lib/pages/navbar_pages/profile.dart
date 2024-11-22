import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    bool isPasswordTextField = true;
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
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Text(
                'Edit Profile',
                style: GoogleFonts.jost(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(width: 4, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(0, 10))
                        ],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/profiles/user.png')),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 4, color: Colors.white),
                            color: introColor),
                        child: const Icon(Icons.edit, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 10),
                  labelText: 'Name',
                  labelStyle: TextStyle(fontSize: 20),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: 'User',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 10),
                  labelText: 'E-mail',
                  labelStyle: TextStyle(fontSize: 20),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: 'example@example.com',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                obscureText: isPasswordTextField,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.remove_red_eye_outlined,
                        color: Colors.grey),
                    onPressed: () {},
                  ),
                  contentPadding: const EdgeInsets.only(bottom: 10),
                  labelText: 'Password',
                  labelStyle: const TextStyle(fontSize: 20),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: '********',
                  hintStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.jost(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            color: introColor),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor),
                      onPressed: () {},
                      child: Text(
                        'Save',
                        style: GoogleFonts.jost(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            color: Colors.white),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
