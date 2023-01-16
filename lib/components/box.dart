import 'package:flutter/material.dart';

class IconBoxCustom extends StatefulWidget {
  const IconBoxCustom({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  State<IconBoxCustom> createState() => _IconBoxCustomState();
}

class _IconBoxCustomState extends State<IconBoxCustom> {
  Color color = Color.fromARGB(255, 232, 227, 226);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (color == Colors.red) {
            color = Color.fromARGB(255, 232, 227, 226);
          } else {
            color = Colors.red;
          }
        });
      },
      child: Container(
        width: double.infinity,
        height: 400,
        margin: EdgeInsets.all(20),
        color: color,
        padding: EdgeInsets.all(30),
        child: Center(
          child: Icon(
            widget.icon,
            size: 100,
          ),
        ),
      ),
    );
  }
}
