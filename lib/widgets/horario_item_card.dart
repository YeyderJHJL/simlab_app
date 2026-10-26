import 'package:flutter/material.dart';
import '../models/horario.dart';

class HorarioItemCard extends StatelessWidget {
  final ItemHorario item;

  const HorarioItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: item.tieneCruce ? Colors.amber.shade50 : Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: item.tieneCruce
            ? const BorderSide(color: Colors.orange, width: 1.5)
            : BorderSide.none,
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.dia,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 6),
                Text(
                  item.curso,
                  style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 4),
                Text(item.hora, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                Text(item.aula, style: const TextStyle(color: Colors.blueGrey, fontSize: 11)),
              ],
            ),
          ),
          if (item.tieneCruce)
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.error, color: Colors.white, size: 16),
              ),
            ),
        ],
      ),
    );
  }
}