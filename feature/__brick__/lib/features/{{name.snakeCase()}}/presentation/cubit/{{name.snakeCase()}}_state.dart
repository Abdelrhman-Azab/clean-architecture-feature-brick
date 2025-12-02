import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/{{model_name.snakeCase()}}.dart';

part '{{name.snakeCase()}}_state.freezed.dart';

@freezed
class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
  const factory {{name.pascalCase()}}State.initial() = _Initial;
  const factory {{name.pascalCase()}}State.loading() = _Loading;
  const factory {{name.pascalCase()}}State.loaded({required {{model_name.pascalCase()}} data}) = _Loaded;
  const factory {{name.pascalCase()}}State.error({required String message}) = _Error;
}
