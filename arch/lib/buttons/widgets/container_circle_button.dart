import 'package:flutter/material.dart';

class ContainerCircleButton extends StatelessWidget {
  const ContainerCircleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 10,
            offset: Offset(0, 8),
          ),
        ],
        gradient: LinearGradient(
          colors: [
            Colors.purple,
            Colors.indigo,
          ],
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            print('object');
          },
          child: const Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text(
                'data',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
