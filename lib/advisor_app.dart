import 'package:flutter/material.dart';

import 'package:advisor_clean_architecture/utils/utils.dart';

class AdvisorApp extends StatelessWidget {
  const AdvisorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ADVISOR APP',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: Text(
            'ADVISOR APP',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
