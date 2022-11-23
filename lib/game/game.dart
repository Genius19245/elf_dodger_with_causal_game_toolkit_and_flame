import 'dart:async';

import 'package:elf_dodger_casual_game_toolkit/game/player.dart';
import 'package:elf_dodger_casual_game_toolkit/game/rock.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ElfDodgerGame extends StatefulWidget {
  const ElfDodgerGame({Key? key}) : super(key: key);

  @override
  _ElfDodgerGameState createState() => _ElfDodgerGameState();
}

class _ElfDodgerGameState extends State<ElfDodgerGame> {
  // game Variables
  double Playerx = 0;
  double ballX = 1;
  double ballY = 1;
  var opacity = 1.0;

  // function to Start Game loop

  void startGame() {
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      rockFalling();
    });
  }

  void rockFalling() {
    setState(() {
      ballY += MediaQuery.of(context).size.width / 900;
      if (ballY > -1) {
        ballY = 1;
      }
    });
  }

  void moveRight() {
    setState(() {
      if (Playerx + 0.1 > 1) {
      } else {
        Playerx += MediaQuery.of(context).size.width / 9000;
      }
    });
  }

  void moveLeft() {
    setState(() {
      if (Playerx - 0.1 < -1) {
      } else {
        Playerx -= MediaQuery.of(context).size.width / 9000;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      onKey: (event) {
        if (event.isKeyPressed(LogicalKeyboardKey.arrowLeft)) {
          moveLeft();
        } else if (event.isKeyPressed(LogicalKeyboardKey.arrowRight)) {
          moveRight();
        }
      },
      focusNode: FocusNode(),
      autofocus: true,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/back.jpeg',
            fit: BoxFit.fill,
          ),
          Column(
            children: [
              Opacity(
                opacity: opacity,
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      opacity = 0;
                      startGame();
                    });
                  },
                ),
              ),
              MyPlayer(playerX: Playerx),
              Rock(ballX: ballX, ballY: ballY),
            ],
          )
        ],
      ),
    );
  }
}
