import 'package:dartz/dartz.dart';
import '../entities/entities.dart';
import '../errors/errors.dart';

abstract class ITeaRepository {
  Future<Either<TeaErrors, List<TeaEntity>>> getTea();
}
