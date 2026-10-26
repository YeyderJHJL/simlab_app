import 'package:flutter/material.dart';
import '../models/solicitud.dart';

class SolicitudesScreen extends StatefulWidget {
  const SolicitudesScreen({super.key});

  @override
  State<SolicitudesScreen> createState() => _SolicitudesScreenState();
}

class _SolicitudesScreenState extends State<SolicitudesScreen> {
  int _currentStep = miSolicitudMock.pasoActual;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solicitud de Cambio de Grupo'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text(
            'Estado de tu Solicitud N° ${miSolicitudMock.id}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text('Curso: ${miSolicitudMock.curso}', style: const TextStyle(color: Colors.grey)),
          const SizedBox(height: 12),
          Stepper(
            currentStep: _currentStep,
            onStepTapped: (step) => setState(() => _currentStep = step),
            steps: const [
              Step(
                title: Text('Solicitud Enviada'),
                subtitle: Text('Registrado el 24/10/2026'),
                content: Text('Tu solicitud ha sido ingresada al sistema SIMLAB correctamente.'),
                isActive: true,
              ),
              Step(
                title: Text('En Evaluación por Dirección'),
                subtitle: Text('En proceso'),
                content: Text('El director de escuela está revisando el motivo y la disponibilidad del cupo.'),
                isActive: true,
              ),
              Step(
                title: Text('Aprobación / Traslado'),
                subtitle: Text('Pendiente'),
                content: Text('Una vez aprobado, el sistema actualizará tu horario automáticamente.'),
                isActive: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}