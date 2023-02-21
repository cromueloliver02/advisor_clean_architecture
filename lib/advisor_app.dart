import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'presentation/pages/pages.dart';

class AdvisorApp extends StatelessWidget {
  const AdvisorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ADVISOR APP',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const AdvicePage(),
    );
  }
}
