import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/failures/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../../../domain/usecases/get_advice_usecase.dart';

part 'advice_event.dart';
part 'advice_state.dart';

class AdviceBloc extends Bloc<AdviceEvent, AdviceState> {
  final GetAdvice getAdvice;

  AdviceBloc({
    required this.getAdvice,
  }) : super(AdviceInitial()) {
    on<AdviceGetRequested>(_onAdviceGetRequested);
  }

  void _onAdviceGetRequested(
    AdviceGetRequested event,
    Emitter<AdviceState> emit,
  ) async {
    emit(AdviceLoadInProgress());

    final Either<Failure, String> eitherAdvice = await getAdvice(NoParams());

    eitherAdvice.fold(
      (Failure error) {
        emit(AdviceLoadFailure(error: error));

        debugPrint(error.toString());
      },
      (String advice) => emit(AdviceLoadSuccess(advice: advice)),
    );
  }
}