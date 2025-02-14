import 'package:flutter/material.dart';

enum Flavor { prod, dev }

class AppConfig {
  String appName = "";
  String baseUrl = "";
  MaterialColor primarySwatch = Colors.blue;
  Flavor flavor = Flavor.dev;

  static AppConfig shared = AppConfig.create();

  factory AppConfig.create({
    String appName = "",
    String baseUrl = "",
    MaterialColor primarySwatch = Colors.blue,
    Flavor flavor = Flavor.dev,
  }) {
    return shared = AppConfig(appName, baseUrl, primarySwatch, flavor);
  }

  AppConfig(this.appName, this.baseUrl, this.primarySwatch, this.flavor);
}
