// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class TextButtonField extends StatelessWidget {
  const TextButtonField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        top: 3,
        bottom: 3,
        right: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey.shade300,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              obscureText: true,
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
              cursorColor: Colors.black87,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Full name',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: null,
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.orange.shade700,
              padding: EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
