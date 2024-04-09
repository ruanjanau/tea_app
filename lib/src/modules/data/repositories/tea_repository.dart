import 'package:dartz/dartz.dart';

import '../../domain/entities/tea_entity.dart';
import '../../domain/errors/tea_errors.dart';
import '../../domain/respositories/repositories.dart';

class TeaRepository implements ITeaRepository {
  @override
  Future<Either<TeaErrors, List<TeaEntity>>> getTea() {
    // TODO: implement getTea
    throw UnimplementedError();
  }
}
