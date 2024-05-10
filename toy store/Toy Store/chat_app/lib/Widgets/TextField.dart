import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.label, required this.icon, });
  final String label;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,),
      decoration: InputDecoration(
        prefixIcon: icon,
        prefixIconColor: Colors.white,
        labelText: label,
        labelStyle: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 16,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.yellow),
        ),
      ),
    );
  }
}
