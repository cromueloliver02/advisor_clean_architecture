import '../../domain/entities/entities.dart';

class AdviceModel extends Advice {
  const AdviceModel({
    required super.id,
    required super.advice,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'advice': advice});

    return result;
  }

  factory AdviceModel.fromMap(Map<String, dynamic> map) {
    return AdviceModel(
      id: map['advice_id']?.toString() ?? '',
      advice: map['advice'] ?? '',
    );
  }
}
