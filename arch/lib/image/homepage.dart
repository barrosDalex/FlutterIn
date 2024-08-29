import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              height: 1000,
              child: const Image(
                image: AssetImage('assets/images/puppy_1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/puppy_2.jpg'),
                child: Text(
                  "data",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/puppy_3.jpg',
                  height: 300,
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
