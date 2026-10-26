import 'package:flutter/material.dart';
import '../models/grupo.dart';
import 'status_chip.dart';

class GrupoItemCard extends StatelessWidget {
  final GrupoLaboratorio grupo;
  final VoidCallback onTapDetalle;

  const GrupoItemCard({
    super.key,
    required this.grupo,
    required this.onTapDetalle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    '${grupo.curso} - Lab ${grupo.grupoLetra}',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                StatusChip(estaLleno: grupo.estaLleno),
              ],
            ),
            const SizedBox(height: 8),
            Text('Horario: ${grupo.horario}', style: const TextStyle(fontSize: 14)),
            Text('Docente: ${grupo.docente}', style: const TextStyle(fontSize: 13, color: Colors.black87)),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: LinearProgressIndicator(
                    value: grupo.porcentajeOcupacion,
                    backgroundColor: Colors.grey.shade200,
                    color: grupo.estaLleno ? Colors.red : Colors.blue.shade800,
                    minHeight: 8,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  '${grupo.cuposOcupados}/${grupo.cuposTotales}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.visibility, size: 16),
                label: const Text('Ver Detalle e Inscribir'),
                onPressed: grupo.estaLleno ? null : onTapDetalle,
              ),
            )
          ],
        ),
      ),
    );
  }
}