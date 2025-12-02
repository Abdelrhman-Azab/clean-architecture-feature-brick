import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/{{model_name.snakeCase()}}.dart';

part '{{model_name.snakeCase()}}_model.freezed.dart';
part '{{model_name.snakeCase()}}_model.g.dart';

@freezed
class {{model_name.pascalCase()}}Model with _${{model_name.pascalCase()}}Model {
  const factory {{model_name.pascalCase()}}Model() = _{{model_name.pascalCase()}}Model;

  factory {{model_name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) => _${{model_name.pascalCase()}}ModelFromJson(json);
}

extension {{model_name.pascalCase()}}ModelX on {{model_name.pascalCase()}}Model {
  {{model_name.pascalCase()}} toEntity() => const {{model_name.pascalCase()}}();
}
