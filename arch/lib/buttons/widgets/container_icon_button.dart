import 'package:flutter/material.dart';

class ContainerIconButton extends StatelessWidget {
  const ContainerIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
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
          child: const Center(
            child: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
