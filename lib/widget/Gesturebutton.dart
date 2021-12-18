import 'package:flutter/material.dart';

class GestureButtonPage extends StatelessWidget {
  final ImageProvider images;
  final Function onTap;
  const GestureButtonPage({Key? key, required this.images, required this.onTap})
      : assert(images != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black38, offset: Offset(0, 3), blurRadius: 15),
        ],
        image: DecorationImage(
          image: images,
        ),
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: GestureDetector(
        onTap: () {},
      ),
    );
  }
}
