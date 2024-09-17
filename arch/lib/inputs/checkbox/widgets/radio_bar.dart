import 'package:flutter/material.dart';

enum Drinks { tea, coffee }

class RadioBar extends StatefulWidget {
  const RadioBar({super.key});

  @override
  State<RadioBar> createState() => _RadioBarState();
}

class _RadioBarState extends State<RadioBar> {
  Drinks _chosenDrink = Drinks.tea;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListTile(
            title: Text('Tea'),
            trailing: Radio(
              value: Drinks.tea,
              groupValue: _chosenDrink,
              onChanged: (Drinks? value) {
                setState(() {
                  _chosenDrink = value!;
                });
              },
              activeColor: Colors.green,
              fillColor: WidgetStateProperty.all(Colors.green),
            ),
            onTap: () {
              setState(() {
                _chosenDrink = Drinks.tea;
              });
            },
          ),
        ),
        Expanded(
          child: ListTile(
            title: Text('Coffee'),
            trailing: Radio(
              value: Drinks.coffee,
              groupValue: _chosenDrink,
              onChanged: (Drinks? value) {
                setState(() {
                  _chosenDrink = value!;
                });
              },
              activeColor: Colors.brown,
              fillColor: WidgetStateProperty.all(Colors.brown),
            ),
            onTap: () {
              setState(() {
                _chosenDrink = Drinks.coffee;
              });
            },
          ),
        ),
      ],
    );
  }
}
