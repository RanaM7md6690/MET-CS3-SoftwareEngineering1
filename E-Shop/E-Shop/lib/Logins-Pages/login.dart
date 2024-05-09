import 'package:eshop/Screens/home_screen.dart';
import 'package:eshop/Logins-Pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image
            Image.asset(
              'images/Logo.png',
              height: 230,
            ),
            // Title
            Text(
              'SIGN IN',
              style: GoogleFonts.robotoCondensed(
                  fontSize: 40, fontWeight: FontWeight.bold),
            ),
            // SubTitle
            Text(
              "We're delighted to have you back! Welcome again to our app :-)",
              style: GoogleFonts.robotoCondensed(fontSize: 13),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            // Email TextField
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Password TextField
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Password'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            // Sign In Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Color(0xff0384d9),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: Text(
                      'Sign in',
                      style: GoogleFonts.robotoCondensed(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            // Text: Forget Password
            Text(
              'Forget Password',
              style: GoogleFonts.robotoCondensed(
                fontSize: 12,
                color: Color(0xff0384d9),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            // Text: Sign up
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
              },
              child: Text(
                'Sign up',
                style: GoogleFonts.robotoCondensed(
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ))));
  }
}
