import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snack_checker/screens/home_screen.dart';

class LoginGooglePage extends StatelessWidget {
  const LoginGooglePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/jajan1.png",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
            Positioned(
              top: 40,
              child: Text(
                "Snack Checkr",
                style: GoogleFonts.montserrat(
                    color: Colors.white, fontSize: 30),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 10,
              right: 10,
              child: Card(
                color: Colors.black.withOpacity(0.3),
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Scan Jajanan Mu Sekarang",
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, bottom: 8),
                      child: Text(
                        "Untuk dapat mengakses aplikasi kami, anda perlu terhubung terlebih dahulu",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            fontSize: 13, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, bottom: 32),
                      child: Card(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/logogoogle.jpeg",
                                  width: 30,
                                ),
                                const SizedBox(width: 30),
                                Text(
                                  "Login Sekarang",
                                  style: GoogleFonts.montserrat(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
