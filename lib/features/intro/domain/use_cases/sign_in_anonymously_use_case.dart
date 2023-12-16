import 'package:dartz/dartz.dart';
import 'package:fittrack/core/data/error/failures/application_failure.dart';
import 'package:fittrack/core/domain/use_cases/use_case.dart';
import 'package:fittrack/features/intro/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignInAnonymouslyUseCase
    extends UseCase<Future<Either<Failure, void>>, String> {
  final AuthRepository authRepository;

  SignInAnonymouslyUseCase({required this.authRepository});

  @override
  Future<Either<Failure, void>> call(String params) async =>
      await authRepository.signInAnonymously(
        params,
      );
}