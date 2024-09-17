// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CheckboxBar extends StatefulWidget {
  const CheckboxBar({super.key});

  @override
  State<CheckboxBar> createState() => _CheckboxBarState();
}

class _CheckboxBarState extends State<CheckboxBar> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            setState(() {
              _isChecked = !_isChecked;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'custom checkbox',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = value!;
                      });
                    },
                    side: BorderSide(
                      color: Colors.amber,
                      width: 3,
                    ),
                    activeColor: Colors.orange.shade800,
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
