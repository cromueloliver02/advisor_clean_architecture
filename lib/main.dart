import 'package:flutter/material.dart';

import 'advisor_app.dart';
import 'dependency_injector.dart' as di;

void main() {
  di.setup();

  runApp(const AdvisorApp());
}
