import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:snack_checker/screens/camera.dart';
import 'package:snack_checker/screens/home_screen.dart';
import 'package:snack_checker/screens/login_google_page.dart';
import 'package:snack_checker/screens/splash_screen.dart';
import 'package:snack_checker/screens/chatbot.dart'; // Tambahkan ini

List<CameraDescription> cameras = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Inisialisasi kamera
  cameras = await availableCameras();
  
  runApp(MyApp());
}

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFdcdbd7),
      ),
      home: SplashScreen(),
      routes: {
        'loginGoogle': (context) => LoginGooglePage(),
        'home': (context) => HomeScreen(),
        'camera': (context) => CameraScreen(),
        'chatbot': (context) => ChatbotPage(), // Tambahkan rute chatbot
      },
    );
  }
}
