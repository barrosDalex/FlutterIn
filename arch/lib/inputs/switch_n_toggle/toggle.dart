// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class ToggleBar extends StatefulWidget {
  const ToggleBar({super.key});

  @override
  State<ToggleBar> createState() => _ToggleBarState();
}

class _ToggleBarState extends State<ToggleBar> {
  final List<bool> _selections = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      children: const [
        Icon(
          Icons.home,
          size: 28,
        ),
        Icon(
          Icons.work,
          size: 28,
        ),
        Icon(
          Icons.airplane_ticket,
          size: 28,
        ),
      ],
      onPressed: (selectedIndex) => setState(() {
        for (var i = 0; i < _selections.length; i++) {
          if (i == selectedIndex) {
            _selections[i] = !_selections[i];
          } else {
            _selections[i] = false;
          }
        }
      }),
      isSelected: _selections,
      color: Colors.brown.shade300,
      selectedColor: Colors.amber,
      fillColor: Colors.brown.shade500,
      borderColor: Colors.grey.shade300,
      borderWidth: 5,
      borderRadius: BorderRadius.circular(50),
    );
  }
}
