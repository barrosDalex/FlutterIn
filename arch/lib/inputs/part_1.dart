// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                style: TextStyle(fontSize: 18),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  helperText: 'Valid email address',
                  helperStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                  icon: Icon(
                    Icons.email_rounded,
                    color: Colors.green,
                  ),
                  suffixIcon: Icon(
                    Icons.check_box_sharp,
                    color: Colors.red,
                    size: 24,
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.amber,
                  ),
                  hintText: 'Email Address',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    borderSide: BorderSide(
                      color: Colors.purple,
                      width: 3,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    borderSide: BorderSide(
                      color: Colors.orange,
                      width: 3,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
