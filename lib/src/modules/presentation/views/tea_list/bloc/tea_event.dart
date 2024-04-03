part of 'tea_bloc.dart';

@freezed
abstract class TeaEvent with _$TeaEvent {
  factory TeaEvent.findAll() = _TeaEventFindAll;
}
