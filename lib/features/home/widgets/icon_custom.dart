import 'package:flutter/material.dart';

class IconCustom extends StatelessWidget {
  const IconCustom({
    Key? key,
    required this.icon,
    this.hasNotification = false,
  }) : super(key: key);

  final IconData icon;
  final bool hasNotification;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.grey.shade300,
          ),
          child: Icon(icon),
        ),
        if (hasNotification)
          Positioned(
            right: 2,
            top: -5,
            child: Container(
              height: 6.5,
              width: 6.5,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          ),
      ],
    );
  }
}
