import 'package:flutter/material.dart';
import 'package:greenshift/core/common/widgets/icon_description.dart';
import 'package:lucide_icons/lucide_icons.dart';

class IndicesCard extends StatelessWidget {
  const IndicesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconDescription(
              title: 'CO2 Level',
              description: Text(
                'Normal',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.greenAccent[700]!),
              ),
              iconData: LucideIcons.atom),
          IconDescription(
              title: 'NDVI',
              description: Text(
                '0.23',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.greenAccent[700]!),
              ),
              iconData: LucideIcons.trendingUp),
          IconDescription(
              title: 'NDVI',
              description: Text(
                '26.3%',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.redAccent[700]),
              ),
              iconData: LucideIcons.glassWater),
          IconDescription(
              title: 'Soil',
              description: Text(
                '46.2%',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.amber[800]),
              ),
              iconData: LucideIcons.leafyGreen),
        ],
      ),
    );
  }
}
