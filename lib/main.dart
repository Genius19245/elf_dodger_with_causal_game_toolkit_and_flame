// Copyright 2022, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Uncomment the following lines when enabling Firebase Crashlytics
// import 'dart:io';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

import 'package:elf_dodger_casual_game_toolkit/game/game.dart';
import 'package:elf_dodger_casual_game_toolkit/pages/elfdodgerlanding.dart';
import 'package:elf_dodger_casual_game_toolkit/pages/options.dart';
import 'package:elf_dodger_casual_game_toolkit/pages/settings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/elfdodgersplash.dart';

void main() async {
  runApp(const ElfDodgerApp());
  if (!kIsWeb) {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }
}

class ElfDodgerApp extends StatelessWidget {
  const ElfDodgerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const ElfDodgerAppSplash(),
        '/landing': (context) => const ElfDodgerLanding(),
        '/options': (context) => const ElfDodgerOptions(),
        '/settings': (context) => const ElfDodgerSettings(),
        '/play': (context) => const ElfDodgerGame(),
      },
    );
  }
}
