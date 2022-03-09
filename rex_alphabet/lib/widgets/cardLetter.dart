import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class cardLetter extends StatelessWidget {
  const cardLetter({
    Key? key,
    required this.cardKey,
    required this.word,
    required this.letter,
  }) : super(key: key);

  final GlobalKey<FlipCardState> cardKey;
  final String word;
  final String letter;

  @override
  Widget build(BuildContext context) {
    const textStyleBack = TextStyle(fontWeight: FontWeight.bold, fontSize: 18);
    const textStyleFront = TextStyle(fontWeight: FontWeight.bold, fontSize: 26);

    return FlipCard(
      key: cardKey,
      flipOnTouch: false,
      front: ElevatedButton(
        onPressed: () => cardKey.currentState?.toggleCard(),
        child: Text(
          letter,
          style: textStyleFront,
        ),
      ),
      back: ElevatedButton(
        onPressed: () => cardKey.currentState?.toggleCard(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                letter,
                style: textStyleBack,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'for',
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
              ),
              Text(
                word,
                style: textStyleBack,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
