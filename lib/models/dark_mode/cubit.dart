import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.light);

void toggleTheme()
{
  final newTheme = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  print('Toggling theme to $newTheme');  // Debug print
  emit(newTheme);
}

}