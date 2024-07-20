import 'package:flutter/material.dart';
import 'package:medium_build_flavor/app_config.dart';
import 'package:medium_build_flavor/home_page.dart';

void main() {
  AppConfig.create(
    appName: "Dev Flavor Example",
    baseUrl: "https://dev.dwirandyh.com",
    primarySwatch: Colors.yellow,
    flavor: Flavor.dev,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Dev',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppConfig.shared.primarySwatch,
      ),
      home: const HomePage(),
    );
  }
}
