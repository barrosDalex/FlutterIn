import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/road.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'data',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 36,
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                    ),
                    children: [
                      TextSpan(
                        text: 'GO',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 48,
                        ),
                      ),
                      TextSpan(
                        text: 'further',
                        style: TextStyle(
                          fontSize: 36,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 3,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 15),
                        blurRadius: 27,
                        color: Colors.black45,
                      ),
                    ],
                  ),
                  child: const Text(
                    'ride!!',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
