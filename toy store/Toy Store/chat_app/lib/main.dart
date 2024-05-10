
import 'package:toy_store/Views/Home_view.dart';
import 'package:toy_store/Views/Splash.dart';
import 'package:toy_store/Views/Toy_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Views/Auth/Login_view.dart';
import 'Views/Auth/Registertion_view.dart';

void main() {
  runApp( ChatApp());
}
class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'toy_store',
      debugShowCheckedModeBanner: false,
      initialRoute: "/splashPage",
     getPages: [
       GetPage(name: "/loginPage", page:()=> LoginView() ),
       GetPage(name: "/registerPage", page:()=> RegisterView() ),
       GetPage(name: "/splashPage", page:()=> SplashScreenv1() ),
       GetPage(name: "/homePage", page:()=> HomeView() ),
       GetPage(name: "/toyPage", page:()=> ToyView() ),

     ],

      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
    );
  }
}

