import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color? color;
  const IconText(
      {super.key, required this.icon, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color ?? Colors.white,
          size: 24,
        ),
        const SizedBox(width: 15),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: color ?? Colors.white, fontSize: 22),
        )
      ],
    );
  }
}
