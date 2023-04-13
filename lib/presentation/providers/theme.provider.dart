import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Inmutable List Colors
final colorListProvider = Provider((ref) => colorList);

// A boolean
final isDarkmodeProvider = StateProvider<bool>((ref) => false);

// An int
final selectedColorProvider = StateProvider((ref) => 0);
