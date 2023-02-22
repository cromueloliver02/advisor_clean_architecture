import 'package:equatable/equatable.dart';

class Advice extends Equatable {
  final String id;
  final String advice;

  const Advice({
    required this.id,
    required this.advice,
  });

  @override
  List<Object> get props => [id, advice];

  @override
  String toString() => 'Advice(id: $id, advice: $advice)';

  Advice copyWith({
    String Function()? id,
    String Function()? advice,
  }) {
    return Advice(
      id: id != null ? id() : this.id,
      advice: advice != null ? advice() : this.advice,
    );
  }
}
