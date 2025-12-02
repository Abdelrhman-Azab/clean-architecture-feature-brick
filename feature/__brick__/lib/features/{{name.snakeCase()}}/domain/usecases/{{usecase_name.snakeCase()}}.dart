import 'dart:async';
import '../entities/{{model_name.snakeCase()}}.dart';
import '../repositories/{{name.snakeCase()}}_repository.dart';
import '../../../../core/result.dart';

class {{usecase_name.pascalCase()}} {
  final {{name.pascalCase()}}Repository repository;

  {{usecase_name.pascalCase()}}(this.repository);

  Future<Result<{{model_name.pascalCase()}}>> call({{usecase_name.pascalCase()}}Params params) {
    return repository.{{usecase_name.camelCase()}}(params);
  }
}

class {{usecase_name.pascalCase()}}Params {
  const {{usecase_name.pascalCase()}}Params();
}
