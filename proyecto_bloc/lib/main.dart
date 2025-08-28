import 'package:flutter/material.dart';
import 'package:proyecto_bloc/Views/failure.dart';
import 'package:proyecto_bloc/Views/loading.dart';
import 'package:proyecto_bloc/Widgets/primerwidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Primerwidget(),
            SizedBox(height: 80, child: ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(fixedSize: const Size.fromWidth(300),),child: const Text('Actualizar'),),),
          ],
        )
          
      ),
    )
    
    );
  }
}

