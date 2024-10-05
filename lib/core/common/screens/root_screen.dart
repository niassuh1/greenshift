import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greenshift/core/common/controllers/nav_controller.dart';
import 'package:greenshift/core/common/widgets/bottom_nav_bar.dart';
import 'package:greenshift/features/home/presentation/screens/home_screen.dart';

class RootScreen extends ConsumerWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: PageView(
        controller: ref.watch(pageControllerProvider),
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeScreen(),
          Scaffold(
            body: Center(
              child: Text('Map'),
            ),
          ),
          Scaffold(
            body: Center(
              child: Text('Settings'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
