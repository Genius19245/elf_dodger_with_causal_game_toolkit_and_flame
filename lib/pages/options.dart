import 'package:flutter/material.dart';

class ElfDodgerOptions extends StatefulWidget {
  const ElfDodgerOptions({Key? key}) : super(key: key);

  @override
  _ElfDodgerOptionsState createState() => _ElfDodgerOptionsState();
}

class _ElfDodgerOptionsState extends State<ElfDodgerOptions> {
  double difficulty = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game Options'),
      ),
      backgroundColor: Colors.orange,
      body: Column(
        children: [
          const Text(
            'Set Your Difficulty Here',
            style: TextStyle(color: Colors.white, fontSize: 38.5),
          ),
          Slider(
              max: 100.0,
              label: 'Set Your Difficulty',
              thumbColor: Colors.blue,
              value: difficulty,
              onChanged: (double) {
                setState(() {
                  difficulty = double;
                  print(difficulty);
                });
              }),
        ],
      ),
    );
  }
}
