import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenshift/core/common/widgets/icon_description.dart';
import 'package:lucide_icons/lucide_icons.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/icons/weather-icon.svg'),
              const SizedBox(width: 8),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Riyadh, Saudi Arabia',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '10:47 AM',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'Mostly Clear',
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 14),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconDescription(
                iconData: LucideIcons.sun,
                title: 'UV',
                description: Text('0 Weak'),
              ),
              IconDescription(
                iconData: LucideIcons.wind,
                title: 'Wind',
                description: Text('11km/h'),
              ),
              IconDescription(
                iconData: LucideIcons.droplet,
                title: 'Humidity',
                description: Text('25%'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
