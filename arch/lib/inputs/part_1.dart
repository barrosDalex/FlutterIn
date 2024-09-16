// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:printer/inputs/widgets/image_text_field.dart';
import 'package:printer/inputs/widgets/rounded_text_filed.dart';
import 'package:printer/inputs/widgets/text_button_field.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  style: TextStyle(fontSize: 18),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    helperText: 'Valid email address',
                    helperStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                    icon: Icon(
                      Icons.email_rounded,
                      color: Colors.green,
                    ),
                    suffixIcon: Icon(
                      Icons.check_box_sharp,
                      color: Colors.red,
                      size: 24,
                    ),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.amber,
                    ),
                    hintText: 'Email Address',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 3,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      borderSide: BorderSide(
                        color: Colors.orange,
                        width: 3,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const RoundedTextField(),
                const SizedBox(
                  height: 20,
                ),
                const TextButtonField(),
                const SizedBox(
                  height: 20,
                ),
                const ImageTextField(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.maxFinite,
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.black54,
                    ),
                  ),
                  child: TextField(
                    maxLines: null,
                    expands: true,
                    decoration: InputDecoration(
                      hintText: 'Long text',
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                    ),
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
