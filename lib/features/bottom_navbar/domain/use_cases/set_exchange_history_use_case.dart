import 'package:dartz/dartz.dart';
import 'package:fittrack/core/data/error/failures/application_failure.dart';
import 'package:fittrack/core/domain/use_cases/use_case.dart';
import 'package:fittrack/features/bottom_navbar/data/models/exchange_history_model.dart';
import 'package:fittrack/features/bottom_navbar/domain/repositories/bottom_navbar_repository_impl.dart';
import 'package:injectable/injectable.dart';

@injectable
class SetExchangeHistoryUseCase
    extends UseCase<Future<Either<Failure, bool>>, ExchangeHistoryModel> {
  final BottomNavbarRepository _bottomNavbarRepository;

  SetExchangeHistoryUseCase(this._bottomNavbarRepository);

  @override
  Future<Either<Failure, bool>> call(ExchangeHistoryModel params) async =>
      await _bottomNavbarRepository.setExchangeHistory(params);
}