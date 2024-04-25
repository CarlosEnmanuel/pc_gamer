import 'package:flutter/material.dart';
import 'package:pc_gamer/api.dart';

final Map<String, String> motherboardInfo = {
  'Z690':
      'La placa base Z690 es una opción de gama alta que ofrece soporte para las últimas características y tecnologías, ideal para usuarios entusiastas y construcciones de alto rendimiento.',
  'B550':
      'La placa base B550 es una opción de gama media que equilibra el rendimiento y el precio, ofreciendo un buen conjunto de características para la mayoría de los usuarios.',
  'X570':
      'La placa base X570 es una opción de gama alta que ofrece un amplio soporte para overclocking y múltiples dispositivos de almacenamiento de alta velocidad, adecuada para usuarios entusiastas y profesionales.',
  'H470':
      'La placa base H470 es una opción de gama media que ofrece un buen equilibrio entre características y precio, adecuada para la mayoría de los usuarios que no necesitan funciones de overclocking.'
};
final Map<String, String> procesadorInfo = {
  'Intel Core i9-12900K':
      'El procesador Intel Core i9-12900K es un potente chip de la serie Alder Lake de Intel, diseñado para ofrecer un rendimiento excepcional en aplicaciones de alta exigencia, como juegos y aplicaciones de edición de video.',
  'Intel Core i7-12700K':
      'El procesador Intel Core i7-12700K es parte de la serie Alder Lake de Intel, destacándose por su rendimiento y eficiencia energética en tareas de computación intensiva.',
  'Intel Core i5-12600K':
      'El procesador Intel Core i5-12600K ofrece un excelente equilibrio entre rendimiento y precio, siendo una opción popular para jugadores y usuarios que realizan tareas multitarea.',
  'AMD Ryzen 9 5900X':
      'El procesador AMD Ryzen 9 5900X es una unidad de procesamiento de alto rendimiento, diseñada para ofrecer una experiencia de juego fluida y un rendimiento excepcional en aplicaciones de productividad.',
  'AMD Ryzen 7 5800X':
      'El procesador AMD Ryzen 7 5800X ofrece un rendimiento excepcional en juegos y aplicaciones de edición de video, gracias a su arquitectura Zen 3 y sus ocho núcleos de procesamiento.',
  'AMD Ryzen 5 5600X':
      'El procesador AMD Ryzen 5 5600X es una opción popular entre los jugadores y usuarios que buscan un rendimiento sólido a un precio atractivo, ofreciendo un equilibrio entre potencia y eficiencia.'
};

final Map<String, String> ramInfo = {
  '32GB DDR4 3600MHz':
      'La memoria RAM DDR4 de 32GB con velocidad de 3600MHz proporciona un rendimiento rápido y fluido, ideal para multitarea intensiva y aplicaciones exigentes.',
  '16GB DDR4 3200MHz':
      'La memoria RAM DDR4 de 16GB con velocidad de 3200MHz ofrece un buen equilibrio entre rendimiento y precio, adecuada para la mayoría de los usuarios.',
  '64GB DDR4 4000MHz':
      'La memoria RAM DDR4 de 64GB con velocidad de 4000MHz es ideal para usuarios profesionales y entusiastas que requieren un rendimiento extremo y una gran capacidad de multitarea.',
  '8GB DDR4 2666MHz':
      'La memoria RAM DDR4 de 8GB con velocidad de 2666MHz es una opción económica para usuarios básicos y tareas cotidianas.'
};
final Map<String, String> almacenamientoInfo = {
  '970 EVO 1TB SSD':
      'El Samsung 970 EVO Plus 1TB SSD es una unidad de estado sólido de alta velocidad que ofrece una gran capacidad de almacenamiento y un rendimiento excepcional para cargas de trabajo intensivas.',
  'BarraCuda 2TB HDD':
      'El Seagate BarraCuda 2TB HDD es un disco duro de alta capacidad diseñado para almacenar una gran cantidad de datos de forma económica y confiable.',
  'SN850 500GB NVMe SSD':
      'El Western Digital SN850 500GB NVMe SSD es una unidad de estado sólido de alta velocidad que utiliza la interfaz NVMe para ofrecer un rendimiento excepcional en aplicaciones y juegos.',
  'WD 500GB SATA SSD':
      'El Western Digital Blue 500GB SATA SSD es una unidad de estado sólido económica que ofrece un rendimiento sólido y una gran confiabilidad para aplicaciones diarias y juegos.'
};

final Map<String, String> tarjetaGraficaInfo = {
  'RTX 3080':
      'La NVIDIA GeForce RTX 3080 es una tarjeta gráfica de alta gama diseñada para ofrecer un rendimiento excepcional en juegos y aplicaciones de gráficos intensivos.',
  'RX 6800 XT':
      'La AMD Radeon RX 6800 XT es una tarjeta gráfica de alta gama que ofrece un rendimiento excepcional en juegos y aplicaciones de gráficos, siendo una opción popular entre los jugadores y creadores de contenido.',
  'RTX 3060 Ti':
      'La NVIDIA GeForce RTX 3060 Ti es una tarjeta gráfica de gama media-alta que ofrece un excelente rendimiento en juegos y aplicaciones de gráficos, siendo una opción popular para jugadores que buscan un buen equilibrio entre rendimiento y precio.',
  'GTX 1660 Super':
      'La NVIDIA GeForce GTX 1660 Super es una tarjeta gráfica de gama media que ofrece un rendimiento sólido en juegos y aplicaciones de gráficos a un precio atractivo, siendo una opción popular entre los jugadores que buscan un buen rendimiento sin gastar demasiado.'
};

final Map<String, String> gabineteInfo = {
  'TUF GT301':
      'El ASUS TUF Gaming GT301 es un gabinete de alta calidad diseñado para jugadores, con un diseño robusto y características de enfriamiento avanzadas para mantener los componentes internos frescos durante largas sesiones de juego.',
  'NZXT H510':
      'El NZXT H510 es un gabinete compacto y elegante con un diseño minimalista y características inteligentes de administración de cables, siendo una opción popular entre los constructores de PC que buscan un aspecto limpio y moderno.',
  'Design Meshify C':
      'El Fractal Design Meshify C es un gabinete de alta gama con un diseño elegante y características avanzadas de enfriamiento, ideal para usuarios entusiastas que buscan un rendimiento excepcional y una estética atractiva.',
  '4000D Airflow':
      'El Corsair 4000D Airflow es un gabinete espacioso con un diseño optimizado para un flujo de aire excepcional, lo que lo convierte en una excelente opción para sistemas de alto rendimiento que requieren una refrigeración eficiente.',
  'Corsair 275R Airflow':
      'El Corsair 275R Airflow es un gabinete versátil con un diseño elegante y características de enfriamiento mejoradas, siendo una opción popular entre los constructores de PC que buscan un equilibrio entre rendimiento y estética.'
};

final Map<String, String> fuentePoderInfo = {
  'Focus GX-850W':
      'La Seasonic Focus GX-850W es una fuente de alimentación de alta eficiencia con una potencia de 850W, diseñada para ofrecer una alimentación estable y confiable para sistemas de alto rendimiento.',
  'SuperNOVA 750 G5':
      'La EVGA SuperNOVA 750 G5 es una fuente de alimentación de alta calidad con una potencia de 750W, diseñada para ofrecer un rendimiento excepcional y una eficiencia energética óptima para sistemas de juego y estaciones de trabajo.',
  'RM750x':
      'La Corsair RM750x es una fuente de alimentación modular con una potencia de 750W, que ofrece un rendimiento silencioso y una alta eficiencia energética para sistemas de alta gama que requieren una alimentación estable y confiable.',
  'CX650M':
      'La Corsair CX650M es una fuente de alimentación semimodular con una potencia de 650W, que ofrece un rendimiento confiable y una buena relación calidad-precio para sistemas de juego y aplicaciones generales.'
};

class CrearComponenteScreen extends StatefulWidget {
  final Map<String, dynamic>? componenteData;

  const CrearComponenteScreen({Key? key, this.componenteData})
      : super(key: key);

  @override
  _CrearComponenteScreenState createState() => _CrearComponenteScreenState();
}

class _CrearComponenteScreenState extends State<CrearComponenteScreen> {
  String? selectedMotherboard;
  String? selectedProcessor;
  String? selectedRam;
  String? selectedAlmacenamiento;
  String? selectedTarjetaGrafica;
  String? selectedGabinete;
  String? selectedFuentePoder;

  final List<String> motherboards = ['Z690', 'B550', 'X570', 'H470'];
  final List<String> procesadores = [
    'Intel Core i9-12900K',
    'Intel Core i7-12700K',
    'Intel Core i5-12600K',
    'AMD Ryzen 9 5900X',
    'AMD Ryzen 7 5800X',
    'AMD Ryzen 5 5600X'
  ];
  final List<String> rams = [
    '32GB DDR4 3600MHz',
    '16GB DDR4 3200MHz',
    '64GB DDR4 4000MHz',
    '8GB DDR4 2666MHz'
  ];
  final List<String> almacenamientos = [
    '970 EVO 1TB SSD',
    'BarraCuda 2TB HDD',
    'SN850 500GB NVMe SSD',
    'WD 500GB SATA SSD'
  ];
  final List<String> tarjetasGraficas = [
    'RTX 3080',
    'RX 6800 XT',
    'RTX 3060 Ti',
    'GTX 1660 Super'
  ];
  final List<String> gabinetes = [
    'TUF GT301',
    'NZXT H510',
    'Design Meshify C',
    '4000D Airflow',
    'Corsair 275R Airflow'
  ];
  final List<String> fuentesPoder = [
    'Focus GX-850W',
    'SuperNOVA 750 G5',
    'RM750x',
    'CX650M'
  ];

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    selectedMotherboard =
        selectedMotherboard ?? widget.componenteData?['motherboard'];
    selectedProcessor =
        selectedProcessor ?? widget.componenteData?['procesador'];
    selectedRam = selectedRam ?? widget.componenteData?['ram'];
    selectedAlmacenamiento =
        selectedAlmacenamiento ?? widget.componenteData?['almacenamiento'];
    selectedTarjetaGrafica =
        selectedTarjetaGrafica ?? widget.componenteData?['tarjetaGrafica'];
    selectedGabinete = selectedGabinete ?? widget.componenteData?['gabinete'];
    selectedFuentePoder =
        selectedFuentePoder ?? widget.componenteData?['fuentePoder'];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.componenteData != null
            ? 'Actualizar Componente'
            : 'Crear Componente'),
        backgroundColor: const Color(0xFFB8D1C4),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              buildDropdownFormField(
                'Motherboard',
                motherboards,
                selectedMotherboard,
                (newValue) {
                  setState(() {
                    selectedMotherboard = newValue;
                    verificarCompatibilidad();
                  });
                },
                motherboardInfo,
              ),
              const SizedBox(height: 15),
              buildDropdownFormField(
                'Procesador',
                procesadores,
                selectedProcessor,
                (newValue) {
                  setState(() {
                    selectedProcessor = newValue;
                    verificarCompatibilidad();
                  });
                },
                procesadorInfo,
              ),
              // buildProcessorDropdownFormField(),
              const SizedBox(height: 15),
              buildDropdownFormField(
                'RAM',
                rams,
                selectedRam,
                (newValue) {
                  setState(() {
                    selectedRam = newValue;
                    verificarCompatibilidad();
                  });
                },
                ramInfo,
              ),
              const SizedBox(height: 15),
              buildDropdownFormField(
                'Almacenamiento',
                almacenamientos,
                selectedAlmacenamiento,
                (newValue) {
                  setState(() {
                    selectedAlmacenamiento = newValue;
                    verificarCompatibilidad();
                  });
                },
                almacenamientoInfo,
              ),
              const SizedBox(height: 15),
              buildDropdownFormField(
                'Tarjeta Gráfica',
                tarjetasGraficas,
                selectedTarjetaGrafica,
                (newValue) {
                  setState(() {
                    selectedTarjetaGrafica = newValue;
                    verificarCompatibilidad();
                  });
                },
                tarjetaGraficaInfo,
              ),
              const SizedBox(height: 15),
              buildDropdownFormField(
                'Gabinete',
                gabinetes,
                selectedGabinete,
                (newValue) {
                  setState(() {
                    selectedGabinete = newValue;
                    verificarCompatibilidad();
                  });
                },
                gabineteInfo,
              ),
              const SizedBox(height: 15),
              buildDropdownFormField(
                  'Fuente de Poder', fuentesPoder, selectedFuentePoder,
                  (newValue) {
                setState(() {
                  selectedFuentePoder = newValue;
                  verificarCompatibilidad();
                });
              }, fuentePoderInfo),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (widget.componenteData != null) {
                      _editarComponente();
                    } else {
                      _crearComponente();
                    }
                  }
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFFB8D1C4)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(widget.componenteData != null
                      ? 'Actualizar Componente'
                      : 'Crear Componente'),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDropdownFormField(
    String label,
    List<String> items,
    String? value,
    Function(String?) onChanged,
    Map<String, String> infoMap,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButtonFormField<String>(
          value: value ??
              (widget.componenteData != null
                  ? widget.componenteData![label.toLowerCase()]
                  : null),
          onChanged: onChanged,
          items: items.map((item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(item),
                  if (value != item)
                    IconButton(
                      onPressed: () {
                        _showInfoDialog(item, infoMap, item.toLowerCase());
                      },
                      icon: const Icon(
                        Icons.info_outline,
                        color: Colors.blue,
                      ),
                    ),
                ],
              ),
            );
          }).toList(),
          decoration: InputDecoration(
            hintText: label, // Aquí se establece el placeholder
            border: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Por favor selecciona un $label';
            }
            return null;
          },
        ),
      ],
    );
  }

  void _showInfoDialog(
      String item, Map<String, String> infoMap, String imagePath) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(item),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(infoMap[item] ?? 'Información no disponible.'),
              const SizedBox(height: 20),
              Image.asset(
                'assets/$imagePath.jpg', // Ruta de la imagen del componente
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cerrar'),
          ),
        ],
      ),
    );
  }

  // Función para verificar la compatibilidad entre componentes seleccionados
  void verificarCompatibilidad() {
    verificarCompatibilidadPlacaProcesador();
    verificarCompatibilidadPlacaRam();
    verificarCompatibilidadAlmacenamiento();
    verificarCompatibilidadPlacaTarjetaGrafica();
    verificarCompatibilidadPlacaGabinete();
  }

  void verificarCompatibilidadPlacaProcesador() {
    if (selectedMotherboard != null && selectedProcessor != null) {
      if (selectedMotherboard == 'Z690') {
        if (!selectedProcessor!.contains('Intel')) {
          mostrarAlerta('Error de compatibilidad',
              'El procesador seleccionado no es compatible con la placa madre Z690.');
          selectedProcessor = null;
          return;
        }
      } else if (selectedMotherboard == 'B550' ||
          selectedMotherboard == 'X570') {
        if (!selectedProcessor!.contains('AMD')) {
          mostrarAlerta('Error de compatibilidad',
              'El procesador seleccionado no es compatible con la placa madre B550 o X570.');
          selectedProcessor = null;
          return;
        }
      }
    }
  }

  void verificarCompatibilidadPlacaRam() {
    if (selectedMotherboard != null && selectedRam != null) {
      if (selectedMotherboard == 'Z690') {
        if (!selectedRam!.contains('DDR4')) {
          mostrarAlerta('Error de compatibilidad',
              'La RAM seleccionada no es compatible con la placa madre Z690.');
          selectedRam = null;
          return;
        }
      } else if (selectedMotherboard == 'B550' ||
          selectedMotherboard == 'X570' ||
          selectedMotherboard == 'H470') {
        if (!selectedRam!.contains('DDR4')) {
          mostrarAlerta('Error de compatibilidad',
              'La RAM seleccionada no es compatible con la placa madre B550, X570 o H470.');
          selectedRam = null;
          return;
        }
      }
    }
  }

  void verificarCompatibilidadAlmacenamiento() {
    if (selectedMotherboard != null && selectedAlmacenamiento != null) {
      if (selectedMotherboard == 'Z690' || selectedMotherboard == 'H470') {
        if (!selectedAlmacenamiento!.contains('SSD')) {
          mostrarAlerta('Error de compatibilidad',
              'El almacenamiento seleccionado no es compatible con la placa madre Z690 o H470.');
          selectedAlmacenamiento = null;
          return;
        }
      } else if (selectedMotherboard == 'B550' ||
          selectedMotherboard == 'X570') {
        if (!selectedAlmacenamiento!.contains('HDD')) {
          mostrarAlerta('Error de compatibilidad',
              'El almacenamiento seleccionado no es compatible con la placa madre B550 o X570.');
          selectedAlmacenamiento = null;
          return;
        }
      }
    }
  }

  void verificarCompatibilidadPlacaTarjetaGrafica() {
    if (selectedMotherboard != null && selectedTarjetaGrafica != null) {
      if (selectedMotherboard == 'Z690' || selectedMotherboard == 'H470') {
        if (!selectedTarjetaGrafica!.contains('RTX')) {
          mostrarAlerta('Error de compatibilidad',
              'La tarjeta gráfica seleccionada no es compatible con la placa madre Z690 o H470.');
          selectedTarjetaGrafica = null;
          return;
        }
      } else if (selectedMotherboard == 'B550' ||
          selectedMotherboard == 'X570') {
        if (!selectedTarjetaGrafica!.contains('RX')) {
          mostrarAlerta('Error de compatibilidad',
              'La tarjeta gráfica seleccionada no es compatible con la placa madre B550 o X570.');
          selectedTarjetaGrafica = null;
          return;
        }
      }
    }
  }

  void verificarCompatibilidadPlacaGabinete() {
    if (selectedMotherboard != null && selectedGabinete != null) {
      if (selectedMotherboard == 'Z690') {
        if (!selectedGabinete!.contains('GT301')) {
          mostrarAlerta('Error de compatibilidad',
              'El gabinete seleccionado no es compatible con la placa madre Z690.');
          selectedGabinete = null;
          return;
        }
      } else if (selectedMotherboard == 'B550') {
        if (!selectedGabinete!.contains('H510')) {
          mostrarAlerta('Error de compatibilidad',
              'El gabinete seleccionado no es compatible con la placa madre B550.');
          selectedGabinete = null;
          return;
        }
      } else if (selectedMotherboard == 'X570') {
        if (!selectedGabinete!.contains('Meshify C')) {
          mostrarAlerta('Error de compatibilidad',
              'El gabinete seleccionado no es compatible con la placa madre X570.');
          selectedGabinete = null;
          return;
        }
      } else if (selectedMotherboard == 'H470') {
        if (!selectedGabinete!.contains('Corsair 275R Airflow')) {
          mostrarAlerta('Error de compatibilidad',
              'El gabinete seleccionado no es compatible con la placa madre H470.');
          selectedGabinete = null;
          return;
        }
      }
    }
  }

  void mostrarAlerta(String titulo, String mensaje) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(titulo),
        content: Text(mensaje),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _crearComponente() async {
    final data = {
      'motherboard': selectedMotherboard!,
      'procesador': selectedProcessor!,
      'ram': selectedRam!,
      'almacenamiento': selectedAlmacenamiento!,
      'tarjetaGrafica': selectedTarjetaGrafica!,
      'gabinete': selectedGabinete!,
      'fuentePoder': selectedFuentePoder!,
    };

    try {
      print('Datos a enviar a la API: $data'); // Mensaje de depuración
      await API.createComponente(data);
      print('Componente creado exitosamente'); // Mensaje de depuración
      Navigator.pop(context);
    } catch (e) {
      print('Error al crear el componente: $e');
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error al crear el componente'),
          content: Text('$e'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  void _editarComponente() async {
    final data = {
      'id': widget.componenteData!['id'],
      'motherboard': selectedMotherboard!,
      'procesador': selectedProcessor!,
      'ram': selectedRam!,
      'almacenamiento': selectedAlmacenamiento!,
      'tarjetaGrafica': selectedTarjetaGrafica!,
      'gabinete': selectedGabinete!,
      'fuentePoder': selectedFuentePoder!,
    };

    try {
      print(
          'Datos a enviar a la API para editar: $data'); // Mensaje de depuración
      await API.editarComponente(data);
      print('Componente editado exitosamente'); // Mensaje de depuración
      Navigator.pop(context);
    } catch (e) {
      print('Error al editar el componente: $e');
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error al editar el componente'),
          content: Text('$e'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }
}
