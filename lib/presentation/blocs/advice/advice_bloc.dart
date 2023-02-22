import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'advice_event.dart';
part 'advice_state.dart';

class AdviceBloc extends Bloc<AdviceEvent, AdviceState> {
  AdviceBloc() : super(AdviceInitial()) {
    on<AdviceGetRequested>(_onAdviceGetRequested);
  }

  void _onAdviceGetRequested(
    AdviceGetRequested event,
    Emitter<AdviceState> emit,
  ) async {
    emit(AdviceLoadInProgress());
    await Future.delayed(const Duration(seconds: 3));
    emit(const AdviceLoadSuccess(advice: 'Lorem ipsum dolor sit amet'));
    // emit(const AdviceLoadFailure(
    //   error: 'Network error: cannot connect to the internet',
    // ));
  }
}
