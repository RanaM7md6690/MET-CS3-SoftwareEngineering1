import 'package:flutter/material.dart';
import 'package:maureenexample/screens/login.screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1E1E),
      body: Container(
        padding: EdgeInsets.all(0),
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Image.asset(
              'images/audiii 1.png',
              width: 400,
              height: 400,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'Find a perfect & favourite car for   you.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return LoginScreen();
                      }),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_circle_right,
                    shadows: <Shadow>[
                      Shadow(color: Color(0xff11A7FB), blurRadius: 10.0)
                    ],
                  ),
                  color: Color(0xff11A7FB),
                  iconSize: 70,
                ),
                SizedBox(
                  width: 20,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
