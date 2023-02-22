part of 'advice_bloc.dart';

abstract class AdviceState extends Equatable {
  const AdviceState();

  @override
  List<Object> get props => [];
}

class AdviceInitial extends AdviceState {}

class AdviceLoadInProgress extends AdviceState {}

class AdviceLoadSuccess extends AdviceState {
  final String advice;

  const AdviceLoadSuccess({
    required this.advice,
  });

  @override
  List<Object> get props => [advice];
}

class AdviceLoadFailure extends AdviceState {
  final Failure error;

  const AdviceLoadFailure({
    required this.error,
  });

  @override
  List<Object> get props => [error];
}
