import 'package:flutter/material.dart';

import 'components/advice_view.dart';

class AdvicePage extends StatelessWidget {
  static const String id = '/advice';

  static Route<dynamic> route(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (ctx) => const AdvicePage(),
    );
  }

  const AdvicePage({super.key});

  @override
  Widget build(BuildContext context) => const AdviceView();
}
