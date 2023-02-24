import 'package:flutter/material.dart';

import 'advisor_app.dart';
import 'core/dependencies.dart' as di;

void main() {
  di.setup();

  runApp(const AdvisorApp());
}
