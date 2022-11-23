import 'package:flutter/material.dart';

class MyPlayer extends StatelessWidget {
  final playerX;

  MyPlayer({required this.playerX});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(playerX, 1),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 80,
          height: 80,
          child: Image.asset('assets/images/elf.png'),
        ),
      ),
    );
  }
}
