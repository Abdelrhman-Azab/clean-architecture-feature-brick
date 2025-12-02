import 'dart:async';

import '../../domain/entities/{{model_name.snakeCase()}}.dart';
import '../../domain/repositories/{{name.snakeCase()}}_repository.dart';
import '../../../../core/result.dart';
import '../../../../core/error/failures.dart';
import '../datasources/{{name.snakeCase()}}_remote_data_source.dart';
import '../datasources/{{name.snakeCase()}}_local_data_source.dart';
import '../models/{{model_name.snakeCase()}}_model.dart';
import '../../domain/usecases/{{usecase_name.snakeCase()}}.dart';

class {{name.pascalCase()}}RepositoryImpl implements {{name.pascalCase()}}Repository {
  final {{name.pascalCase()}}RemoteDataSource remoteDataSource;
  final {{name.pascalCase()}}LocalDataSource localDataSource;

  {{name.pascalCase()}}RepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Result<{{model_name.pascalCase()}}>> {{usecase_name.camelCase()}}({{usecase_name.pascalCase()}}Params params) async {
    try {
      final model = await remoteDataSource.{{usecase_name.camelCase()}}(params);
      return Result<{{model_name.pascalCase()}}>.success(model.toEntity());
    } catch (e) {
      try {
        final localModel = await localDataSource.{{usecase_name.camelCase()}}(params);
        return Result<{{model_name.pascalCase()}}>.success(localModel.toEntity());
      } catch (e2) {
        return Result<{{model_name.pascalCase()}}>.failure(Failure(message: e2.toString()));
      }
    }
  }
}
