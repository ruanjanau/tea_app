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

  Future<void> toggleFavorite(int id) async {
    final updatedTeas = value.teas.map((tea) {
      if (tea.id == id) {
        return tea.copyWith(isFavorite: !tea.isFavorite);
      }
      return tea;
    }).toList();

    value = value.copyWith(teas: updatedTeas);

    final tea = value.teas.firstWhere((tea) => tea.id == id);
    await _teaUsecase.updateFavoriteStatus(tea.id, tea.isFavorite);
  }
}
