import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(_lightTheme());

  static _lightTheme() => ThemeData(
        brightness: Brightness.light,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.white,
        ),
      );

  static _darkTheme() => ThemeData(
        brightness: Brightness.dark,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.black,
        ),
      );

  void toggleTheme() {
    emit(state.brightness == Brightness.light ? _darkTheme() : _lightTheme());
  }
}
