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
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Text(
                "asfd f sdaaf sdsdf a asdf afsdaf sdf asd fasdafsd af sda fsd",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.blue,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Pacifico',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
