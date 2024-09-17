// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SwitchBar extends StatefulWidget {
  const SwitchBar({super.key});

  @override
  State<SwitchBar> createState() => _SwitchBarState();
}

class _SwitchBarState extends State<SwitchBar> {
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.grey.shade200,
      title: Text(
        'Switch here',
        style: TextStyle(
          fontSize: 18,
        ),
      ),
      trailing: Switch(
        value: _isOn,
        onChanged: (value) {
          setState(() {
            _isOn = value;
          });
        },
        activeColor: Colors.green,
        activeTrackColor: Colors.green.shade200,
        inactiveThumbColor: Colors.red,
        inactiveTrackColor: Colors.red.shade200,
      ),
      onTap: () {
        setState(() {
          _isOn = !_isOn;
        });
      },
    );
  }
}
