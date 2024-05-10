import 'package:toy_store/Views/Auth/Login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/Button.dart';
import '../../Widgets/TextField.dart';
import '../../constant.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  static String id = 'RegiterView';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Scaffold(
        backgroundColor:MainColor,
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
              const SizedBox(
                height: 40,
              ),
              const Row(
                children: [
                  Text(
                    'Sign up',
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
                  icon: Icon(Icons.mail),
                  label: 'Email',
                ),
              ),
              const CustomTextField(
                label: 'Password',
                icon: Icon(Icons.vpn_key_outlined),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: CustomTextField(
                  label: 'phone',
                  icon: Icon(Icons.phone),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: CustomButton(
                  text: 'Sign up',
                  color: Colors.yellow,
                  page: "/homePage",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "already have an accouunt ? ",
                    style: TextStyle(color: Colors.white),
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Text(
                      "Log in",
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
