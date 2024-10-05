import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class IconDescription extends StatelessWidget {
  final String title;
  final Widget description;
  final IconData iconData;

  const IconDescription({
    super.key,
    required this.title,
    required this.description,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 12,
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 10, color: Colors.black54),
            ),
            description
          ],
        )
      ],
    );
  }
}
