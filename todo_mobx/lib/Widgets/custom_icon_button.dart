import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final double radius;
  final IconData iconData;
  final VoidCallback onTap;

  CustomIconButton({
    required this.radius,
    required this.iconData,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.blue,
      child: IconButton(
        icon: Icon(iconData),
        color: Colors.white,
        onPressed: onTap,
      ),
    );
  }
}
