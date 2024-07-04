import 'package:dartz/dartz.dart';

import '../../domain/entities/tea_entity.dart';
import '../../domain/errors/tea_errors.dart';
import '../../domain/repositories/repositories.dart';
import '../datasources/tea_datasource.dart';

class TeaRepository implements ITeaRepository {
  final ITeaDatasource _datasource;

  TeaRepository(this._datasource);

  @override
  Future<Either<TeaErrors, List<TeaEntity>>> getTea() async {
    try {
      final response = await _datasource.getTea();
      return Right(response.map<TeaEntity>((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(TeaErrors.server());
    }
  }

  @override
  Future<void> updateFavoriteStatus(int id, bool isFavorite) async {
    await _datasource.updateFavoriteStatus(id, isFavorite);
  }
}
