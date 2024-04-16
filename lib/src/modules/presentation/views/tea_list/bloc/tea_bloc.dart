import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/datasources/tea_datasource.dart';

import '../../../../data/models/models.dart';

part 'tea_bloc.freezed.dart';
part 'tea_event.dart';
part 'tea_state.dart';

class TeaBloc extends Bloc<TeaEvent, TeaState> {
  final TeaDatasource _iTeaDatasource;
  TeaBloc({required TeaDatasource iTeaDatasource})
      : _iTeaDatasource = iTeaDatasource,
        super(TeaState.initial()) {
    on<_TeaEventFindAll>(_findAll);
  }

  Future<void> _findAll(_TeaEventFindAll event, Emitter<TeaState> emit) async {
    try {
      emit(TeaState.loading());
      final products = await _iTeaDatasource.getTea();
      emit(TeaState.data(products: products));
    } catch (e) {
      emit(TeaState.error(message: 'Erro ao lista de chás.'));
    }
  }
}
