import 'package:flutter/material.dart';
import '../models/horario.dart';
import '../widgets/horario_item_card.dart';

class HorarioScreen extends StatelessWidget {
  const HorarioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Horario Semanal'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Card(
              color: Colors.orange.shade100,
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Icon(Icons.warning_amber, color: Colors.orange),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Alerta de Cruce: Detectado solapamiento el Lunes 08:00 - 10:00.',
                        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: miHorarioMock.length,
                itemBuilder: (context, index) {
                  return HorarioItemCard(item: miHorarioMock[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}