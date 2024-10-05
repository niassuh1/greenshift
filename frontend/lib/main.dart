import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greenshift/core/common/screens/root_screen.dart';
import 'package:greenshift/theme/app_theme_data.dart';

void main() {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GreenShift',
      theme: appThemeData,
      home: const RootScreen(),
    );
  }
}
