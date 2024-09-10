import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umair_liaqat_portfolio/config/size_config.dart';
import 'package:umair_liaqat_portfolio/views/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    // This runs before the widget is fully built
    // We use addPostFrameCallback to run code after the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      performActionAfterBuild();
    });
  }

  void performActionAfterBuild() {
    SizeConfig.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.pacificoTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Umair Liaqat',
      home: const SplashScreen(),
    );
  }
}
