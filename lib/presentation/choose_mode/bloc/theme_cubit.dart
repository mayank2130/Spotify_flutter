

import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeState {
  final ThemeMode mode;
  final bool isDarkSelected;
  final bool isLightSelected;

  ThemeState({
    required this.mode,
    this.isDarkSelected = false,
    this.isLightSelected = false,
  });

  // Add these methods for JSON serialization
  Map<String, dynamic> toJson() {
    return {
      'theme': mode.index,
      'isDarkSelected': isDarkSelected,
      'isLightSelected': isLightSelected,
    };
  }

  factory ThemeState.fromJson(Map<String, dynamic> json) {
    return ThemeState(
      mode: ThemeMode.values[json['theme'] as int],
      isDarkSelected: json['isDarkSelected'] as bool? ?? false,
      isLightSelected: json['isLightSelected'] as bool? ?? false,
    );
  }
}

// theme_cubit.dart
class ThemeCubit extends HydratedCubit<ThemeMode> {
  bool isDarkSelected = false;
  bool isLightSelected = false;

  ThemeCubit() : super(ThemeMode.system);

  void updateTheme(ThemeMode themeMode) {
    isDarkSelected = themeMode == ThemeMode.dark;
    isLightSelected = themeMode == ThemeMode.light;
    emit(themeMode);
  }

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    return ThemeMode.values[json['theme'] as int];
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    return {'theme': state.index};
  }
}