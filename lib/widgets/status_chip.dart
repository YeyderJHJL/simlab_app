import 'package:flutter/material.dart';

class StatusChip extends StatelessWidget {
  final bool estaLleno;

  const StatusChip({super.key, required this.estaLleno});

  @override
  Widget build(BuildContext context) {
    return Chip(
      padding: EdgeInsets.zero,
      labelPadding: const EdgeInsets.symmetric(horizontal: 8),
      label: Text(
        estaLleno ? 'LLENO' : 'DISPONIBLE',
        style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
      ),
      backgroundColor: estaLleno ? Colors.red.shade700 : Colors.green.shade700,
    );
  }
}