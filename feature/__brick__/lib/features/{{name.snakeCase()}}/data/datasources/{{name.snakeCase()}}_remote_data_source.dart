import 'dart:async';

import '../models/{{model_name.snakeCase()}}_model.dart';
import '../../domain/usecases/{{usecase_name.snakeCase()}}.dart';

abstract class {{name.pascalCase()}}RemoteDataSource {
  Future<{{model_name.pascalCase()}}Model> {{usecase_name.camelCase()}}({{usecase_name.pascalCase()}}Params params);
}

class {{name.pascalCase()}}RemoteDataSourceImpl implements {{name.pascalCase()}}RemoteDataSource {
  {{name.pascalCase()}}RemoteDataSourceImpl();

  @override
  Future<{{model_name.pascalCase()}}Model> {{usecase_name.camelCase()}}({{usecase_name.pascalCase()}}Params params) async {
    return {{model_name.pascalCase()}}Model();
  }
}
