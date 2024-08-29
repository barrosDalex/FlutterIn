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
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: "test",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.green,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextSpan(
                      text: "IP",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "sun",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
