import 'package:get_it/get_it.dart';
import '../data/datasources/{{name.snakeCase()}}_local_data_source.dart';
import '../data/datasources/{{name.snakeCase()}}_remote_data_source.dart';
import '../data/repositories/{{name.snakeCase()}}_repository_impl.dart';
import '../domain/repositories/{{name.snakeCase()}}_repository.dart';
import '../domain/usecases/{{usecase_name.snakeCase()}}.dart';
import '../presentation/cubit/{{name.snakeCase()}}_cubit.dart';

final sl = GetIt.instance;

Future<void> init{{name.pascalCase()}}Dependencies() async {
  sl.registerFactory(() => {{name.pascalCase()}}Cubit(sl()));

  sl.registerLazySingleton(() => {{usecase_name.pascalCase()}}(sl()));

  sl.registerLazySingleton<{{name.pascalCase()}}Repository>(
    () => {{name.pascalCase()}}RepositoryImpl(remoteDataSource: sl(), localDataSource: sl()),
  );

  sl.registerLazySingleton<{{name.pascalCase()}}RemoteDataSource>(
    () => {{name.pascalCase()}}RemoteDataSourceImpl(),
  );
  sl.registerLazySingleton<{{name.pascalCase()}}LocalDataSource>(
    () => {{name.pascalCase()}}LocalDataSourceImpl(),
  );
}
