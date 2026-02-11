import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'splashscreen_page.dart';
import 'welcome_screen.dart';
import 'register_page.dart';
import 'login_page.dart';
import 'complete_profile_page.dart';
import 'notification_permission_page.dart';
import 'location_permission_page.dart';
import 'choose_location_page.dart';
import 'home.dart';
import 'search_page.dart';
import 'wishlist_page.dart';
import 'profile_page.dart';
import 'detail_restoran.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Teman Resto',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: const SplashScreen(),
      routes: {
        '/welcome': (context) => const WelcomeScreen(),
        '/register': (context) => const RegisterPage(),
        '/login': (context) => const LoginPage(),
        '/complete-profile': (context) =>
            const CompleteProfilePage(),
        '/notification-permission': (context) =>
            const NotificationPermissionPage(),
        '/location-permission': (context) =>
            const LocationPermissionPage(),
        '/choose-location': (context) =>
            const ChooseLocationPage(),
        '/home': (context) => const HomePage(),
        '/search': (context) => const SearchPage(),
        '/wishlist': (context) => const WishlistPage(),
        '/profile': (context) => const ProfilePage(),
        '/detail-restoran': (context) =>
            const DetailRestoran(),
      },
    );
  }
}
