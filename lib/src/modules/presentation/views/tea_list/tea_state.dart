import 'package:chazen/src/modules/domain/entities/entities.dart';
import 'package:equatable/equatable.dart';

class TeaState extends Equatable {
  final bool isError;
  final bool isLoading;
  final List<TeaEntity> teas;

  const TeaState({
    this.isError = false,
    this.isLoading = false,
    this.teas = const [],
  });

  factory TeaState.initial() => const TeaState();

  TeaState copyWith({
    bool? isError,
    bool? isLoading,
    List<TeaEntity>? teas,
  }) {
    return TeaState(
      isError: isError ?? this.isError,
      isLoading: isLoading ?? this.isLoading,
      teas: teas ?? this.teas,
    );
  }

  @override
  List<Object?> get props => [isError, isLoading, teas];
}
