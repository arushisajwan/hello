import 'package:dartz/dartz.dart';
import 'package:fittrack/core/data/error/failures/application_failure.dart';
import 'package:fittrack/core/domain/use_cases/use_case.dart';
import 'package:fittrack/features/bottom_navbar/data/models/reward_model.dart';
import 'package:fittrack/features/bottom_navbar/domain/repositories/bottom_navbar_repository_impl.dart';
import 'package:injectable/injectable.dart';

@injectable
class EarnARewardUseCase
    extends UseCase<Future<Either<Failure, bool>>, RewardModel> {
  final BottomNavbarRepository _bottomNavbarRepository;

  EarnARewardUseCase(this._bottomNavbarRepository);

  @override
  Future<Either<Failure, bool>> call(RewardModel params) async =>
      await _bottomNavbarRepository.earnAReward(params);
}