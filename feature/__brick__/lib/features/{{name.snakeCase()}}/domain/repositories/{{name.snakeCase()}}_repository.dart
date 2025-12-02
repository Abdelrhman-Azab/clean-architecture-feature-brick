import 'dart:async';
import '../entities/{{model_name.snakeCase()}}.dart';
import '../../../../core/result.dart';
import '../usecases/{{usecase_name.snakeCase()}}.dart';

abstract class {{name.pascalCase()}}Repository {
  Future<Result<{{model_name.pascalCase()}}>> {{usecase_name.camelCase()}}({{usecase_name.pascalCase()}}Params params);
}
