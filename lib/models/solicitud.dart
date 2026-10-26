class SolicitudCambio {
  final String id;
  final String curso;
  final String grupoOrigen;
  final String grupoDestino;
  final String fecha;
  final int pasoActual;

  const SolicitudCambio({
    required this.id,
    required this.curso,
    required this.grupoOrigen,
    required this.grupoDestino,
    required this.fecha,
    required this.pasoActual,
  });
}

const miSolicitudMock = SolicitudCambio(
  id: 'SOL-4091',
  curso: 'Plataformas Emergentes',
  grupoOrigen: 'Grupo A (Lun 08-10)',
  grupoDestino: 'Grupo B (Mie 10-12)',
  fecha: '24/10/2026',
  pasoActual: 1,
);