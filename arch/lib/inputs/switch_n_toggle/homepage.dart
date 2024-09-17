// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:printer/inputs/switch_n_toggle/switchbar.dart';
import 'package:printer/inputs/switch_n_toggle/toggle.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SwitchBar(),
            SizedBox(height: 10),
            ToggleBar(),
          ],
        ),
      ),
    );
  }
}
