import 'package:flutter/material.dart';
import '../models/grupo.dart';

class DetalleGrupoScreen extends StatelessWidget {
  final GrupoLaboratorio grupo;

  const DetalleGrupoScreen({super.key, required this.grupo});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('${grupo.curso} - Grupo ${grupo.grupoLetra}'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.info), text: 'Información'),
              Tab(icon: Icon(Icons.people), text: 'Inscritos'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Docente: ${grupo.docente}', style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 8),
                  Text('Horario: ${grupo.horario}', style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 8),
                  Text('Aforo total: ${grupo.cuposTotales} estudiantes', style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 8),
                  Text('Cupos disponibles: ${grupo.cuposDisponibles}',
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green)),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.check_circle),
                      label: const Text('Confirmar Inscripción'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Inscripción realizada con éxito en SIMLAB')),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('N°')),
                  DataColumn(label: Text('Código')),
                  DataColumn(label: Text('Estudiante')),
                ],
                rows: grupo.estudiantes.map((e) {
                  return DataRow(cells: [
                    DataCell(Text(e.orden.toString())),
                    DataCell(Text(e.codigo)),
                    DataCell(Text(e.nombreCompleto)),
                  ]);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}