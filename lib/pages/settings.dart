import 'package:flutter/material.dart';

import '../widgets/elfdodgerbutton.dart';

class ElfDodgerSettings extends StatefulWidget {
  const ElfDodgerSettings({Key? key}) : super(key: key);

  @override
  _ElfDodgerSettingsState createState() => _ElfDodgerSettingsState();
}

class _ElfDodgerSettingsState extends State<ElfDodgerSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: const Text('Here is the Game Settings'),
      ),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text(
                  'Audio Settings',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
                ElfDodgerButton(
                  on: 'volume',
                  off: 'mute',
                  ontap: () {
                    // toggle sound on and off
                  },
                  width: 150,
                  height: 150,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
