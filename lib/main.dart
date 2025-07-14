import 'package:flutter/material.dart';

import 'features/onboarding/presentation/views/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Space Grotesk"),
      debugShowCheckedModeBanner: false,
      home:OnboardingScreen()
    );
  }
}

