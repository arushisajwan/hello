import 'package:dartz/dartz.dart';
import 'package:fittrack/core/data/error/failures/application_failure.dart';
import 'package:fittrack/utilities/constants/enums.dart';

abstract class AuthRepository {
  Future<Either<Failure, bool>> signInAnonymously(String name);
  Future<AuthStatus> hasAnAccount();
}