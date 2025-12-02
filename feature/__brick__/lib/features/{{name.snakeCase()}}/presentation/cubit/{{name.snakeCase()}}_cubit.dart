import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/{{usecase_name.snakeCase()}}.dart';
import '{{name.snakeCase()}}_state.dart';

class {{name.pascalCase()}}Cubit extends Cubit<{{name.pascalCase()}}State> {
  final {{usecase_name.pascalCase()}} {{usecase_name.camelCase()}};

  {{name.pascalCase()}}Cubit(this.{{usecase_name.camelCase()}}) : super(const {{name.pascalCase()}}State.initial());

  Future<void> load() async {
    emit(const {{name.pascalCase()}}State.loading());
    final result = await {{usecase_name.camelCase()}}(const {{usecase_name.pascalCase()}}Params());
    result.when(
      success: (data) => emit({{name.pascalCase()}}State.loaded(data: data)),
      failure: (failure) => emit({{name.pascalCase()}}State.error(message: failure.message ?? "")),
    );
  }
}
