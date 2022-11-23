import 'package:flutter/material.dart';

import '../widgets/elfdodgerbutton.dart';

class ElfDodgerLanding extends StatelessWidget {
  const ElfDodgerLanding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/back.jpeg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
            Center(
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/elf.png',
                        height: 200,
                        width: 200,
                        fit: BoxFit.contain,
                      ),
                      const Text(
                        'Elf Dodger',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElfDodgerButton(
                          on: 'start',
                          off: 'start',
                          ontap: () {
                            Navigator.of(context).pushNamed('/play');
                          },
                          width: 100,
                          height: 125),
                      ElfDodgerButton(
                          on: 'settings',
                          off: 'settings',
                          ontap: () {
                            Navigator.of(context).pushNamed('/settings');
                          },
                          width: 100,
                          height: 125),
                      ElfDodgerButton(
                          on: 'options',
                          off: 'options',
                          ontap: () {
                            Navigator.of(context).pushNamed('/options');
                          },
                          width: 100,
                          height: 125),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
