// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:printer/inputs/checkbox/widgets/chechbox_bar.dart';
import 'package:printer/inputs/checkbox/widgets/radio_bar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CheckboxBar(),
            RadioBar(),
          ],
        ),
      ),
    );
  }
}
