import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'modo_state.dart';

class ModoCubit extends Cubit<ModoState> {
  ModoCubit() : super(ModoInitial());
}
