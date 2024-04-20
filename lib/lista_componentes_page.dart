import 'package:flutter/material.dart';

import 'api.dart';
import 'crear_componente_screen.dart';

class ListaComponentesPage extends StatefulWidget {
  const ListaComponentesPage({Key? key}) : super(key: key);

  @override
  _ListaComponentesPageState createState() => _ListaComponentesPageState();
}

class _ListaComponentesPageState extends State<ListaComponentesPage> {
  late Future<List<Map<String, dynamic>>> _componentesFuture;

  @override
  void initState() {
    super.initState();
    _componentesFuture = _cargarComponentes();
  }

  Future<List<Map<String, dynamic>>> _cargarComponentes() async {
    try {
      return await API.obtenerTodosLosComponentes();
    } catch (e) {
      // Manejar el error
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Lista de Componentes',
          ),
        ),
        backgroundColor: const Color(0xFFB8D1C4),
      ),
      body: Container(
        color: Colors.grey[200],
        padding: const EdgeInsets.all(16.0),
        child: FutureBuilder<List<Map<String, dynamic>>>(
          future: _componentesFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return const Center(
                  child: Text('Error al cargar los componentes'));
            } else if (snapshot.hasData && snapshot.data!.isEmpty) {
              return const Center(
                  child: Text('No hay componentes disponibles'));
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final componente = snapshot.data![index];
                  return Card(
                    color: Colors.white,
                    elevation: 4.0,
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ExpansionTile(
                      title: Row(
                        children: [
                          const Expanded(
                            child: Flexible(
                              child: Text(
                                'Armar PC',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 68, 68, 68)),
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.edit,
                                color: Color.fromARGB(255, 157, 158, 157)),
                            onPressed: () {
                              _editarComponente(componente);
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete,
                                color: Colors.redAccent),
                            onPressed: () {
                              _eliminarComponente(int.parse(componente['id']));
                            },
                          ),
                        ],
                      ),
                      children: [
                        ListTile(
                          title: Row(
                            children: [
                              const Text(
                                'Motherboard: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                child: Text(
                                  '${componente['motherboard']}',
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          title: Row(
                            children: [
                              const Text(
                                'Procesador: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                child: Text(
                                  '${componente['procesador']}',
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          title: Row(
                            children: [
                              const Text(
                                'RAM: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                child: Text(
                                  '${componente['ram']}',
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          title: Row(
                            children: [
                              const Text(
                                'Almacenamiento: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                child: Text(
                                  '${componente['almacenamiento']}',
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          title: Row(
                            children: [
                              const Text(
                                'Tarjeta Gráfica: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                child: Text(
                                  '${componente['tarjetaGrafica']}',
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          title: Row(
                            children: [
                              const Text(
                                'Gabinete: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                child: Text(
                                  '${componente['gabinete']}',
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          title: Row(
                            children: [
                              const Text(
                                'Fuente de Poder: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                child: Text(
                                  '${componente['fuentePoder']}',
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CrearComponenteScreen(),
            ),
          ).then((_) {
            setState(() {
              _componentesFuture = _cargarComponentes();
            });
          });
        },
        backgroundColor: const Color.fromARGB(255, 127, 221, 172),
        foregroundColor: Colors.white,
        mini: true,
        child: const Icon(Icons.add),
      ),
    );
  }

  void _eliminarComponente(int idComponente) async {
    try {
      await API.eliminarComponente(idComponente);
      setState(() {
        _componentesFuture = _cargarComponentes();
      });
    } catch (e) {
      // Manejar el error
    }
  }

  void _editarComponente(Map<String, dynamic> componente) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CrearComponenteScreen(componenteData: componente),
      ),
    ).then((_) {
      setState(() {
        _componentesFuture = _cargarComponentes();
      });
    });
  }
}
