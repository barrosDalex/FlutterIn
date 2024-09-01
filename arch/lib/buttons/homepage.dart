import 'package:flutter/material.dart';
import 'package:printer/buttons/widgets/container_button.dart';
import 'package:printer/buttons/widgets/container_circle_button.dart';
import 'package:printer/buttons/widgets/container_elevated_button.dart';
import 'package:printer/buttons/widgets/container_icon_button.dart';
import 'package:printer/buttons/widgets/container_icon_text_button.dart';
import 'package:printer/buttons/widgets/container_outline_button.dart';
import 'package:printer/buttons/widgets/container_text_button.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ContainerButton(),
              SizedBox(height: 15),
              ContainerCircleButton(),
              SizedBox(height: 15),
              ContainerIconButton(),
              SizedBox(height: 15),
              ContainerIconTextButton(),
              SizedBox(height: 15),
              ContainerTextButton(),
              SizedBox(height: 15),
              ContainerOutlineButton(),
              SizedBox(height: 15),
              ContainerElevatedButton(),
            ],
          ),
        ),
      ),
    );
  }
}
