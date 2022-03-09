import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:rex_alphabet/fixtures/NATO.dart';
import 'package:rex_alphabet/widgets/cardLetter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.title),
        ),
      ),
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: getList(context),
      ),
    );
  }

  List<Widget> getList(BuildContext context) {
    List<Widget> listCards = [];

    int lenghNATO = natoAlphabet.length;

    for (int i = 0; i < lenghNATO; i++) {
      String letter = String.fromCharCode(i + 65).toString().toUpperCase();

      String word = natoAlphabet[letter] ?? '*******';

      listCards.add(itemBuilder(context, word, letter));
    }

    return listCards;
  }

  Widget itemBuilder(BuildContext context, String word, String letter) {
    GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SizedBox(
          width: width * 0.30,
          height: height * 0.3,
          child: cardLetter(
            cardKey: cardKey,
            word: word,
            letter: letter,
          ),
        ),
      ),
    );
  }
}
