part of 'modo_cubit.dart';

class ModoState extends Equatable {
  final ThemeData themeData;
  final bool esModoOscuro;

  const ModoState({
    required this.themeData,
    required this.esModoOscuro,
  });

  @override
  List<Object> get props => [themeData, esModoOscuro];
}
