import 'package:flutter/material.dart';

import 'api.dart';

class CrearComponenteScreen extends StatefulWidget {
  final Map<String, dynamic>? componenteData;

  const CrearComponenteScreen({Key? key, this.componenteData})
      : super(key: key);

  @override
  _CrearComponenteScreenState createState() => _CrearComponenteScreenState();
}

class _CrearComponenteScreenState extends State<CrearComponenteScreen> {
  final TextEditingController motherboardController = TextEditingController();
  final TextEditingController procesadorController = TextEditingController();
  final TextEditingController ramController = TextEditingController();
  final TextEditingController almacenamientoController =
      TextEditingController();
  final TextEditingController tarjetaGraficaController =
      TextEditingController();
  final TextEditingController gabineteController = TextEditingController();
  final TextEditingController fuentePoderController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Llenar los controladores de texto si estamos editando un componente
    if (widget.componenteData != null) {
      final data = widget.componenteData!;
      motherboardController.text = data['motherboard'];
      procesadorController.text = data['procesador'];
      ramController.text = data['ram'];
      almacenamientoController.text = data['almacenamiento'];
      tarjetaGraficaController.text = data['tarjetaGrafica'];
      gabineteController.text = data['gabinete'];
      fuentePoderController.text = data['fuentePoder'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear/Actualizar'),
        backgroundColor: const Color(0xFFB8D1C4),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: motherboardController,
              decoration: const InputDecoration(labelText: 'Motherboard'),
            ),
            TextField(
              controller: procesadorController,
              decoration: const InputDecoration(labelText: 'Procesador'),
            ),
            TextField(
              controller: ramController,
              decoration: const InputDecoration(labelText: 'RAM'),
            ),
            TextField(
              controller: almacenamientoController,
              decoration: const InputDecoration(labelText: 'Almacenamiento'),
            ),
            TextField(
              controller: tarjetaGraficaController,
              decoration: const InputDecoration(labelText: 'Tarjeta Gráfica'),
            ),
            TextField(
              controller: gabineteController,
              decoration: const InputDecoration(labelText: 'Gabinete'),
            ),
            TextField(
              controller: fuentePoderController,
              decoration: const InputDecoration(labelText: 'Fuente de Poder'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                if (widget.componenteData != null) {
                  _editarComponente();
                } else {
                  _crearComponente();
                }
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFB8D1C4)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: Text(
                  widget.componenteData != null ? 'Actualizar PC' : 'Crear PC'),
            ),
          ],
        ),
      ),
    );
  }

  void _crearComponente() async {
    final data = {
      'motherboard': motherboardController.text,
      'procesador': procesadorController.text,
      'ram': ramController.text,
      'almacenamiento': almacenamientoController.text,
      'tarjetaGrafica': tarjetaGraficaController.text,
      'gabinete': gabineteController.text,
      'fuentePoder': fuentePoderController.text,
    };

    try {
      await API.createComponente(data);
      Navigator.pop(context);
    } catch (e) {
      print('Error al crear el componente: $e');
    }
  }

  void _editarComponente() async {
    final data = {
      'id': widget.componenteData!['id'],
      'motherboard': motherboardController.text,
      'procesador': procesadorController.text,
      'ram': ramController.text,
      'almacenamiento': almacenamientoController.text,
      'tarjetaGrafica': tarjetaGraficaController.text,
      'gabinete': gabineteController.text,
      'fuentePoder': fuentePoderController.text,
    };

    try {
      await API.editarComponente(data);
      Navigator.pop(context);
    } catch (e) {
      print('Error al editar el componente: $e');
    }
  }
}
