import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proyecto_bloc/cubit/modo_cubit.dart';

class Segundowidget extends StatelessWidget {
  const Segundowidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.greenAccent,
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            context.read<ModoCubit>().alternarModo();
          },
          child: const Text('Cambiar modo'),
        ),
      ),
    );
  }
}
