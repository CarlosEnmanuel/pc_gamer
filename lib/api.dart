import 'dart:convert';

import 'package:http/http.dart' as http;

class API {
  // Método para obtener todos los componentes
  static Future<List<Map<String, dynamic>>> obtenerTodosLosComponentes() async {
    final response = await http
        .get(Uri.parse('http://localhost/proyectos/api_pc_gamer/getAll'));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return List<Map<String, dynamic>>.from(data);
    } else {
      throw Exception('Error al obtener los componentes');
    }
  }

  // Método para crear un componente
  static Future<void> createComponente(Map<String, dynamic> data) async {
    final url = Uri.parse('http://localhost/proyectos/api_pc_gamer/create');
    final response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );
    if (response.statusCode != 200) {
      throw Exception('Error al crear el componente');
    }
  }

  // Método para editar un componente
  static Future<void> editarComponente(Map<String, dynamic> data) async {
    final url = Uri.parse('http://localhost/proyectos/api_pc_gamer/update');
    final response = await http.put(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );

    // Manejar la respuesta
    if (response.statusCode != 200) {
      throw Exception('Error al actualizar el componente: ${response.body}');
    }
  }

  static Future<void> eliminarComponente(int idComponente) async {
    final url = Uri.parse('http://localhost/proyectos/api_pc_gamer/delete');
    final response = await http.delete(
      url,
      body: jsonEncode({'id': idComponente}),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    // Manejar la respuesta
    if (response.statusCode != 200) {
      throw Exception('Error al eliminar el componente: ${response.body}');
    }
  }
}
