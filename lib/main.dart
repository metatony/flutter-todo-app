import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'home_page.dart';

void main() async {
//initialize hive
  await Hive.initFlutter();

  // open a box
  var box = await Hive.openBox('my box');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,
          unselectedWidgetColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
