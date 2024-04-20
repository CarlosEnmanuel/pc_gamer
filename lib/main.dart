import 'package:flutter/material.dart';

import 'lista_componentes_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Aplicación',
      home:
          ListaComponentesPage(), // Esto carga la pantalla de lista de componentes al inicio
    );
  }
}
