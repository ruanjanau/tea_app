import 'package:dartz/dartz.dart';

import '../entities/entities.dart';
import '../errors/errors.dart';
import '../repositories/repositories.dart';

abstract class ITeaUsecase {
  Future<Either<TeaErrors, List<TeaEntity>>> call();
  Future<void> updateFavoriteStatus(int id, bool isFavorite);
}

class TeaUsecase implements ITeaUsecase {
  final ITeaRepository _repository;

  TeaUsecase(this._repository);
  @override
  Future<Either<TeaErrors, List<TeaEntity>>> call() {
    return _repository.getTea();
  }

  @override
  Future<void> updateFavoriteStatus(int id, bool isFavorite) async {
    await _repository.updateFavoriteStatus(id, isFavorite);
  }
}
