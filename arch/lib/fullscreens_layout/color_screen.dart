import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.orange.shade400,
                Colors.deepOrange,
                Colors.blue.shade300,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [
                0.3,
                0.5,
                0.7,
              ]),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 50,
                child: Container(
                  width: 250,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/choco_colors.jpg'),
                      ),
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 5,
                        color: Colors.white,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 26,
                          offset: Offset(0, 24),
                        )
                      ]),
                ),
              ),
              const Expanded(
                flex: 50,
                child: Center(
                  child: Text(
                    'data',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
