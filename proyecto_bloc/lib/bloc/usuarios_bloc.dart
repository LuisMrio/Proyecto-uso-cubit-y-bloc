import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
import '../modelo/usuario.dart';

part 'usuarios_event.dart';
part 'usuarios_state.dart';

class UsuariosBloc extends Bloc<UsuariosEvent, UsuariosState> {
  UsuariosBloc() : super(UsuariosInitial()) {
    on<Usuariosbuscar>((event, emit) async {
      emit(UsuariosLoading());
      final url = Uri.parse(
        'https://mocki.io/v1/b9097d2f-0fa0-4bdd-8fab-1827019bc7af',
      );
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        final usuarios = data.map((e) => User.fromJson(e)).toList();
        emit(UsuariosSuccess(usuarios));
      } else {
        emit(UsuariosFailure());
      }
    });
  }
}
