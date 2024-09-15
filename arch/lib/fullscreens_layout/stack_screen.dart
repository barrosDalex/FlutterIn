// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/road.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.2),
                ],
              ),
            ),
          ),
          Container(
            width: 320,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/tea.jpg'),
                fit: BoxFit.contain,
              ),
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            top: 100,
            child: Text(
              'tea',
              style: TextStyle(
                color: Colors.white,
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            child: TextButton(
              onPressed: () {},
              child: Text('data'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.green.shade200,
                foregroundColor: Colors.green.shade900,
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 30,
                ),
                textStyle: TextStyle(
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                elevation: 5,
                shadowColor: Colors.greenAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
