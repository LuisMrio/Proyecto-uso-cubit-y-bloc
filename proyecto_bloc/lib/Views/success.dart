import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proyecto_bloc/Widgets/primerwidget.dart';
import 'package:proyecto_bloc/Widgets/segundowidget.dart';
import 'package:proyecto_bloc/bloc/usuarios_bloc.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    final usuariosState = context.watch<UsuariosBloc>().state;

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<UsuariosBloc>().add(Usuariosbuscar());
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size.fromWidth(300),
              ),
              child: const Text('Actualizar'),
            ),
            const SizedBox(height: 20),
            if (usuariosState is UsuariosSuccess)
              Expanded(
                child: ListView.builder(
                  itemCount: usuariosState.usuarios.length,
                  itemBuilder: (context, index) {
                    final user = usuariosState.usuarios[index];
                    return ListTile(
                      title: Text(user.nombre),
                      subtitle: Text(user.numero.toString()),
                    );
                  },
                ),
              ),
            const Segundowidget(),
          ],
        ),
      ),
    );
  }
}
