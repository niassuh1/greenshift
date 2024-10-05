import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greenshift/core/common/controllers/nav_controller.dart';
import 'package:lucide_icons/lucide_icons.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavigationBar(
      onTap: (value) {
        ref.read(currentPageProvider.notifier).state = value;
        ref.read(pageControllerProvider).animateToPage(value,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut);
      },
      currentIndex: ref.watch(currentPageProvider),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 20,
      selectedLabelStyle: const TextStyle(fontSize: 13),
      unselectedLabelStyle: const TextStyle(fontSize: 13),
      unselectedItemColor: Colors.black38,
      iconSize: 16,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(LucideIcons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(LucideIcons.map),
          label: 'Map',
        ),
        BottomNavigationBarItem(
          icon: Icon(LucideIcons.settings),
          label: 'Settings',
        ),
      ],
    );
  }
}
