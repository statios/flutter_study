import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function tappedCard;

  ReusableCard({@required this.color, this.cardChild, this.tappedCard});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onTap: tappedCard,
    );
  }
}
