import 'package:flutter/material.dart';
import 'package:flutter_app/resources/themes/styles/base_styles.dart';
import 'package:nylo_framework/nylo_framework.dart';

class BaseThemeConfig {
  final String id;
  final String description;
  final ThemeData theme;
  final BaseColorStyles colors;
  final dynamic meta;

  BaseThemeConfig({required this.id, required this.description, required this.theme, required this.colors, this.meta = const {}});

  AppTheme toAppTheme({ThemeData? defaultTheme}) => AppTheme(
    id: this.id,
    data: defaultTheme == null ? this.theme : defaultTheme,
    description: this.description,
  );
}