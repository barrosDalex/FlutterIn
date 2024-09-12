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
                Icon(
                  Icons.menu,
                  size: 28,
                  color: Colors.black87,
                )
              ],
            ),
          ),
          Container(),
          const SizedBox(
            height: 20,
          ),
          Container(),
        ],
      ),
    );
  }
}
