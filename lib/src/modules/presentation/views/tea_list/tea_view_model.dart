import 'package:flutter/material.dart';

import '../../../domain/usecases/usecases.dart';
import 'tea_list.dart';

class TeaViewModel extends ValueNotifier<TeaState> {
  final ITeaUsecase _teaUsecase;
  TeaViewModel(this._teaUsecase) : super(TeaState.initial());

  Future<void> getTeas() async {
    value = value.copyWith(isLoading: true);

    final response = await _teaUsecase();

    final state = response.fold(
      (error) => value.copyWith(isError: true),
      (teas) => value.copyWith(teas: teas),
    );

    value = state.copyWith(isLoading: false);
  }
}
