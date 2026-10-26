import 'package:flutter/material.dart';
import '../models/grupo.dart';
import '../widgets/grupo_item_card.dart';
import 'detalle_grupo_screen.dart';

class GruposScreen extends StatelessWidget {
  const GruposScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grupos y Cupos Disponibles'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: gruposMock.length,
        itemBuilder: (context, index) {
          final grupo = gruposMock[index];
          return GrupoItemCard(
            grupo: grupo,
            onTapDetalle: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleGrupoScreen(grupo: grupo),
                ),
              );
            },
          );
        },
      ),
    );
  }
}