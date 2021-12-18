import 'package:flutter/material.dart';

class Textpage extends StatelessWidget {
  final bool textType;
  final String? hint;
  final String? label;
  final Widget? icons;
  final Widget? icon;
  final bool obsecure;
  final TextEditingController controller;

  const Textpage(
      {Key? key,
      this.hint,
      this.icons,
      this.icon,
      this.label,
      required this.controller,
      required this.textType,
      required this.obsecure});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1 / 1.5,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.cyan.withOpacity(0.5),
              blurRadius: 15,
              offset: Offset(0, 3)),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        controller: controller,
        keyboardType: textType ? TextInputType.text : TextInputType.number,
        obscureText: obsecure,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: icons,
          suffixIcon: icon,
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0.5, color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(width: 0.5, color: Colors.teal)),
        ),
      ),
    );
  }
}
