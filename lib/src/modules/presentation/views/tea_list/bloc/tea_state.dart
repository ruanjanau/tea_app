part of 'tea_bloc.dart';

@freezed
abstract class TeaState with _$TeaState {
  factory TeaState.initial() = _TeaStateInitial;

  factory TeaState.loading() = _TeaStateLoading;

  factory TeaState.data({required List<TeaModel> data}) = _TeaStateData;

  factory TeaState.error({required String message}) = _TeaStateError;

  factory TeaState.success({required String message}) = _TeaStateSuccess;
}
