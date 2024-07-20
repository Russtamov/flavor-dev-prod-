import 'package:flutter/material.dart';
import 'package:medium_build_flavor/app_config.dart';
import 'package:medium_build_flavor/home_page.dart';

void main() {
  AppConfig.create(
    appName: "Prod Flavor Example",
    baseUrl: "https://dwirandyh.com",
    primarySwatch: Colors.blue,
    flavor: Flavor.prod,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo Production',
      theme: ThemeData(
        primarySwatch: AppConfig.shared.primarySwatch,
      ),
      home: const HomePage(),
    );
  }
}
