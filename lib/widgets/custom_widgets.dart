import 'package:flutter/material.dart';

// 🔥 BOTÓN
Widget buildButton({
  required String text,
  required VoidCallback onTap,
  bool isOutline = false,
}) {
  return Container(
    width: double.infinity,
    height: 55,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      gradient: isOutline
          ? null
          : const LinearGradient(
              colors: [
                Colors.black,
                Color(0xFFF8BBD0),
              ],
            ),
      border: isOutline
          ? Border.all(color: Colors.black)
          : null,
    ),
    child: MaterialButton(
      onPressed: onTap,
      child: Text(
        text,
        style: TextStyle(
          color: isOutline ? Colors.black : Colors.white,
          fontSize: 16,
        ),
      ),
    ),
  );
}

// 🔥 INPUT
Widget inputFile({required String label, bool obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      Text(label),

      const SizedBox(height: 5),

      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),

      const SizedBox(height: 15),
    ],
  );
}