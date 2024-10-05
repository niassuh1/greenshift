import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pageControllerProvider = Provider(
  (ref) => PageController(),
);

final currentPageProvider = StateProvider(
  (ref) => 0,
);
