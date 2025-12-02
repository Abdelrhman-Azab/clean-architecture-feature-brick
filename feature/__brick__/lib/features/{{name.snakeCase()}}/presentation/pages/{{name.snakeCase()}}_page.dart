import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/{{name.snakeCase()}}_cubit.dart';
import '../cubit/{{name.snakeCase()}}_state.dart';
import '../../di/{{name.snakeCase()}}_dependency.dart';

class {{name.pascalCase()}}Page extends StatelessWidget {
  const {{name.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<{{name.pascalCase()}}Cubit>()..load(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('{{name.pascalCase()}}'),
        ),
        body: BlocBuilder<{{name.pascalCase()}}Cubit, {{name.pascalCase()}}State>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: Text('Initial')),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (data) => const Center(child: Text('Loaded')),
              error: (message) => Center(child: Text(message)),
            );
          },
        ),
      ),
    );
  }
}
