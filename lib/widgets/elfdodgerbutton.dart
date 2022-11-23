import 'package:flutter/material.dart';

class ElfDodgerButton extends StatefulWidget {
  final String on;
  final String off;
  final Function ontap;
  final double width;
  final double height;
  const ElfDodgerButton(
      {Key? key,
      required this.on,
      required this.off,
      required this.ontap,
      required this.width,
      required this.height})
      : super(key: key);

  @override
  _ElfDodgerButtonState createState() => _ElfDodgerButtonState();
}

class _ElfDodgerButtonState extends State<ElfDodgerButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.ontap(),
      onTapDown: ((details) {
        setState(() {
          isPressed = true;
        });
      }),
      onTapUp: ((details) {
        setState(() {
          isPressed = false;
        });
      }),
      onTapCancel: () {},
      child: Stack(
        children: [
          Opacity(
            opacity: isPressed ? 0 : 1,
            child: Image.asset(
              'assets/images/${widget.on}.png',
              width: widget.width,
              height: widget.height,
            ),
          ),
          Opacity(
            opacity: isPressed ? 1 : 0,
            child: Image.asset(
              'assets/images/${widget.off}.png',
              width: widget.width,
              height: widget.height,
            ),
          ),
        ],
      ),
    );
  }
}
