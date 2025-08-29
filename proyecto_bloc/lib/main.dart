import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proyecto_bloc/Views/failure.dart';
import 'package:proyecto_bloc/Views/loading.dart';
import 'package:proyecto_bloc/Views/success.dart';
import 'package:proyecto_bloc/bloc/usuarios_bloc.dart';
import 'cubit/modo_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UsuariosBloc()..add(Usuariosbuscar())),
        BlocProvider(create: (_) => ModoCubit()),
      ],
      child: BlocBuilder<ModoCubit, ModoState>(
        builder: (context, modoState) {
          return MaterialApp(
            theme: modoState.themeData,
            home: BlocBuilder<UsuariosBloc, UsuariosState>(
              builder: (context, state) {
                if (state is UsuariosSuccess) {
                  return const Success();
                } else if (state is UsuariosLoading) {
                  return const Loading();
                } else if (state is UsuariosFailure) {
                  return const Failure();
                }
                return const Loading();
              },
            ),
          );
        },
      ),
    );
  }
}
