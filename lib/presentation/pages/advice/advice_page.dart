import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../dependency_injector.dart';
import '../../blocs/advice/advice_bloc.dart';
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
