import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'modo_state.dart';

class ModoCubit extends Cubit<ModoState> {
  ModoCubit()
    : super(ModoState(themeData: ThemeData.light(), esModoOscuro: false));

  void alternarModo() {
    if (state.esModoOscuro) {
      emit(ModoState(themeData: ThemeData.light(), esModoOscuro: false));
    } else {
      emit(ModoState(themeData: ThemeData.dark(), esModoOscuro: true));
    }
  }
}
