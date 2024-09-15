// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  const RoundedTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.black87),
      ),
      child: TextField(
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Full name',
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
          icon: Icon(
            Icons.person,
            size: 28,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
