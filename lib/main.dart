import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fyta/appartments/flats.dart';
import 'package:fyta/appartments/hostel.dart';
import 'package:fyta/appartments/rooms.dart';
import 'package:fyta/drawer/about_page.dart';
import 'package:fyta/drawer/contact_page.dart';
import 'package:fyta/drawer/help_page.dart';
import 'package:fyta/drawer/setting_page.dart';
import 'package:fyta/drawer/share_with.dart';
import 'package:fyta/mainpage.dart';
import 'package:fyta/map/map.dart';
import 'package:fyta/map/mapappbar.dart';
import 'package:fyta/notification.dart';
import 'package:fyta/otp.dart';
import 'package:fyta/phone.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'phone',
      routes: {
        'mapappbar': (context) => MyMap2(),
        'phone': (context) => MyPhone(),
        'otp': ((context) => Myotp()),
        'home': ((context) => MainPage()),
        'hostel': ((context) => hostel()),
        'rooms': ((context) => rooms()),
        'flats': ((context) => flats()),
        'sharewith': ((context) => SharePage()),
        'setting': ((context) => SettingsPage()),
        'helppage': ((context) => helppage()),
        'contactpage': ((context) => contactpage()),
        'about': ((context) => Aboutpage()),
        'notification': ((context) => MyNotification()),
      },
    ),
  );
}
