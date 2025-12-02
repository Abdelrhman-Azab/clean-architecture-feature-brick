import 'dart:async';

import '../models/{{model_name.snakeCase()}}_model.dart';
import '../../domain/usecases/{{usecase_name.snakeCase()}}.dart';

abstract class {{name.pascalCase()}}LocalDataSource {
  Future<{{model_name.pascalCase()}}Model> {{usecase_name.camelCase()}}({{usecase_name.pascalCase()}}Params params);
}

class {{name.pascalCase()}}LocalDataSourceImpl implements {{name.pascalCase()}}LocalDataSource {
  {{name.pascalCase()}}LocalDataSourceImpl();

  @override
  Future<{{model_name.pascalCase()}}Model> {{usecase_name.camelCase()}}({{usecase_name.pascalCase()}}Params params) async {
    return {{model_name.pascalCase()}}Model();
  }
}
