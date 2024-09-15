// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 60,
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                colors: [
                  Colors.orange.shade50,
                  Colors.orange.shade200,
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.menu,
                  size: 28,
                  color: Colors.black87,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Expanded(
                      flex: 5,
                      child: Text(
                        'data \n data',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          height: 1.3,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Image.asset(
                        'assets/images/vase_2.png',
                        height: 180,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(0, -50),
            child: Container(
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 30),
              padding: EdgeInsets.only(
                top: 8,
                left: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 20,
                    offset: Offset(0, 10),
                  )
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black87,
                    size: 20,
                  ),
                  border: InputBorder.none,
                  hintText: 'keyboard',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 45,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.red.shade100,
                  Colors.red.shade300,
                ],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              'assets/images/vase_2.png',
              height: 300,
            ),
          ),
        ],
      ),
    );
  }
}
