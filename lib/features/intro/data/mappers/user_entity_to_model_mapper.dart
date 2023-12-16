import 'package:fittrack/core/data/data_sources/database.dart';
import 'package:fittrack/core/data/models/user_model.dart';
import 'package:fittrack/features/intro/domain/entities/user_entity.dart';

extension UserEntityToModelMapper on UserEntity {
  UserModel toModel() {
    return UserModel(
      uid: uid ?? documentIdFromLocalGenerator(),
      name: name,
    );
  }
}
