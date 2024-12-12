import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:qrcodegeneratorapp/ui/home_screen.dart';
import 'package:qrcodegeneratorapp/ui/qr_generator_screen.dart';
import 'package:qrcodegeneratorapp/ui/qr_scanner_screen.dart';
import 'package:qrcodegeneratorapp/ui/splash_screen.dart';


void main() {
  runApp( DevicePreview(
    enabled: true,
    builder: (context) => MainApp()
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Manrope',
        scaffoldBackgroundColor: Color.fromARGB(0, 68, 68, 211),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/create': (context) => const QrGeneratorScreen(),
        '/scan': (context) => const QrScannerScreen(), 
      },
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    );
  }
}
