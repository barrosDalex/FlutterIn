import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: const Color(0x80F0E068),
          child: const Center(
            child: Text(
              "data",
              style: TextStyle(
                fontSize: 40,
                color: Colors.purple,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
