import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  final String? tittle;
  final Color? color;
  final Function onPressed;
  const ButtonPage({Key? key, this.tittle, this.color, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      height: 50,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.cyan.withOpacity(0.5),
            blurRadius: 15,
            offset: Offset(0, 3))
      ]),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            primary: color,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        child: Text(
          tittle!,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
              letterSpacing: 2),
        ),
      ),
    );
  }
}
