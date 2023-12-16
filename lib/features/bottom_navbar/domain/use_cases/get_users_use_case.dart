import 'package:dartz/dartz.dart';
import 'package:fittrack/core/data/error/failures/application_failure.dart';
import 'package:fittrack/core/data/models/user_model.dart';
import 'package:fittrack/core/domain/use_cases/use_case.dart';
import 'package:fittrack/features/bottom_navbar/domain/repositories/bottom_navbar_repository_impl.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUsersUseCase extends UseCase<
    Future<Either<Failure, Stream<List<UserModel>>>>, NoParams> {
  final BottomNavbarRepository _bottomNavbarRepository;

  GetUsersUseCase(this._bottomNavbarRepository);

  @override
  Future<Either<Failure, Stream<List<UserModel>>>> call(
      NoParams params) async =>
      await _bottomNavbarRepository.usersStream();}