import 'package:freezed_annotation/freezed_annotation.dart';

part '{{model_name.snakeCase()}}.freezed.dart';

@freezed
class {{model_name.pascalCase()}} with _${{model_name.pascalCase()}} {
  const factory {{model_name.pascalCase()}}() = _{{model_name.pascalCase()}};
}
