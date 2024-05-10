import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/Button.dart';
import '../../Widgets/TextField.dart';
import '../../constant.dart';
import 'Registertion_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static String id = 'LoginView';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Scaffold(
        backgroundColor: MainColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListView(
            children: [
              SizedBox(
                height: 70,
              ),
              CircleAvatar(
                radius: 65,
                backgroundColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/batman logo.png',
                    height: 200,
                    width: 130,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Toy Store',
                    style: GoogleFonts.pacifico(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              const Row(
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 16.0,
                ),
                child: CustomTextField(
                  icon: Icon(Icons.account_circle_outlined),
                  label: 'UserName',
                ),
              ),
              const CustomTextField(
                label: 'Password',
                icon: Icon(Icons.vpn_key_outlined),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: CustomButton(
                  text: 'Login',
                  color: Colors.yellow,
                  page: "/homePage",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account ? ",
                    style: TextStyle(color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/registerPage');
                    },
                    child: const Text(
                      "Create One",
                      style: TextStyle(
                        color: Colors.yellow,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.yellow,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
