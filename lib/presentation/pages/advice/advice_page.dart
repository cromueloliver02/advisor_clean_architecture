import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/dependencies.dart';
import '../../blocs/blocs.dart';
import 'components/advice_view.dart';

class AdvicePage extends StatelessWidget {
  const AdvicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AdviceBloc>.value(
      value: sl<AdviceBloc>(),
      child: const AdviceView(),
    );
  }
}
