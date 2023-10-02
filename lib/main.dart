import 'package:flutter/material.dart';
import 'package:flutter_radio_app/constants/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'views/radio_page/radio_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Radio App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: CustomColors.primary),
            useMaterial3: true,
          ),
          home: const RadioPage(),
        );
      }
    );
  }
}