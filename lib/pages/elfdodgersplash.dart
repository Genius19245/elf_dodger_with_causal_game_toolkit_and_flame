import 'dart:async';

import 'package:flutter/material.dart';

class ElfDodgerAppSplash extends StatefulWidget {
  const ElfDodgerAppSplash({Key? key}) : super(key: key);

  @override
  State<ElfDodgerAppSplash> createState() => _ElfDodgerAppSplashState();
}

class _ElfDodgerAppSplashState extends State<ElfDodgerAppSplash> {
  late Timer timer;
  void init() {
    super.initState();
    timer = Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/landing');
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushNamed('/landing');
    });

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(48),
            child: Image.asset(
              'assets/images/elf.png',
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          const Text(
            'Elf Dodger',
            style: TextStyle(
              color: Colors.black,
              fontSize: 50,
            ),
          )
        ],
      ),
    );
  }
}
