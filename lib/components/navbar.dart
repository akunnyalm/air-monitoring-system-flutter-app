import 'package:airguard/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('User'),
            accountEmail: const Text('example@example.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/profiles/user.png'),
              ),
            ),
            decoration: BoxDecoration(
              color: introColor,
              image: const DecorationImage(
                  image: AssetImage('assets/profiles/default-header.jpeg'),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.dashboard_outlined),
            title: Text(
              'Dashboard',
              style: GoogleFonts.jost(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/homepage');
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle_outlined),
            title: Text(
              'Profile',
              style: GoogleFonts.jost(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/profilepage');
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: Text(
              'Settings',
              style: GoogleFonts.jost(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/settingspage');
            },
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: Text(
              'About Us',
              style: GoogleFonts.jost(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/aboutuspage');
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout_outlined),
            title: Text(
              'Log Out',
              style: GoogleFonts.jost(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              // soon
            },
          ),
        ],
      ),
    );
  }
}
