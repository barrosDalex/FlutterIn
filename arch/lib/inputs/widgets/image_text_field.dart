// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ImageTextField extends StatelessWidget {
  const ImageTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/green.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.grey.shade600.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextField(
          cursorColor: Colors.white,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(vertical: 20),
            hintText: 'Full name',
            hintStyle: TextStyle(
              fontSize: 18,
              color: Colors.white54,
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Icon(
                Icons.person,
                color: Colors.white.withOpacity(0.7),
                size: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
