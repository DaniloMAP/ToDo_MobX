import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({required this.radius, required this.iconData, required this.onTap, required this.child});

  final double radius;
  final IconData iconData;
  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Stack(
            alignment: Alignment.center,
            children: [
              child,
              Icon(iconData),
            ],
          ),
        ),
      ),
    );
  }
}
