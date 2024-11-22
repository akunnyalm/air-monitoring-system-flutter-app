// common pages
import 'package:airguard/pages/home_page.dart';
import 'package:airguard/pages/intro_page.dart';

// nav bar pages
import 'package:airguard/pages/navbar_pages/aboutus.dart';
import 'package:airguard/pages/navbar_pages/profile.dart';
import 'package:airguard/pages/navbar_pages/settings.dart';

// firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// flutter
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/intropage',
      routes: {
        // common pages
        '/intropage': (context) => const IntroPage(),
        '/homepage': (context) => const HomePage(),

        // nav bar pages
        '/aboutuspage': (context) => const AboutUsPage(),
        '/settingspage': (context) => const SettingsPage(),
        '/profilepage': (context) => const ProfilePage(),
      },
    );
  }
}
