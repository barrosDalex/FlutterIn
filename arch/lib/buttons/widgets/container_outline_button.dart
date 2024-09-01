import 'package:flutter/material.dart';

class ContainerOutlineButton extends StatelessWidget {
  const ContainerOutlineButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.amber,
            side: const BorderSide(
              width: 4,
              color: Colors.black,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        child: const Text(
          'data',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
