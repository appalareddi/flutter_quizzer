import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quizzer/firebase_options.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        textTheme: GoogleFonts.dmSansTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff6A3DE8))
      ),
      themeMode: ThemeMode.dark,
      home: const Scaffold(
        body: Center(
          child: Text('Hello There!!!'),
        ),
      ),
    );
  }
}
