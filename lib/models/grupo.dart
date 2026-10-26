class EstudianteInscrito {
  final int orden;
  final String codigo;
  final String nombreCompleto;

  const EstudianteInscrito({
    required this.orden,
    required this.codigo,
    required this.nombreCompleto,
  });
}

class GrupoLaboratorio {
  final String id;
  final String curso;
  final String grupoLetra;
  final String horario;
  final String docente;
  final int cuposOcupados;
  final int cuposTotales;
  final List<EstudianteInscrito> estudiantes;

  const GrupoLaboratorio({
    required this.id,
    required this.curso,
    required this.grupoLetra,
    required this.horario,
    required this.docente,
    required this.cuposOcupados,
    required this.cuposTotales,
    required this.estudiantes,
  });

  bool get estaLleno => cuposOcupados >= cuposTotales;
  double get porcentajeOcupacion => cuposOcupados / cuposTotales;
  int get cuposDisponibles => cuposTotales - cuposOcupados;
}

// Datos estáticos de prueba para simulación en vivo
final List<GrupoLaboratorio> gruposMock = [
  const GrupoLaboratorio(
    id: 'G1',
    curso: 'Plataformas Emergentes',
    grupoLetra: 'A',
    horario: 'Lun 08:00 - 10:00',
    docente: 'Ing. R. Fabrizio Calienes R.',
    cuposOcupados: 18,
    cuposTotales: 20,
    estudiantes: [
      EstudianteInscrito(orden: 1, codigo: '20220145', nombreCompleto: 'Jhamil Yeyder Turpo Añasco'),
      EstudianteInscrito(orden: 2, codigo: '20220982', nombreCompleto: 'María Gómez'),
      EstudianteInscrito(orden: 3, codigo: '20221104', nombreCompleto: 'Carlos Ramos'),
    ],
  ),
  const GrupoLaboratorio(
    id: 'G2',
    curso: 'Plataformas Emergentes',
    grupoLetra: 'B',
    horario: 'Mie 10:00 - 12:00',
    docente: 'Ing. R. Fabrizio Calienes R.',
    cuposOcupados: 20,
    cuposTotales: 20,
    estudiantes: [
      EstudianteInscrito(orden: 1, codigo: '20220331', nombreCompleto: 'Ana Martínez'),
      EstudianteInscrito(orden: 2, codigo: '20220554', nombreCompleto: 'Pedro Sánchez'),
    ],
  ),
  const GrupoLaboratorio(
    id: 'G3',
    curso: 'Sistemas Distribuidos',
    grupoLetra: 'A',
    horario: 'Mar 14:00 - 16:00',
    docente: 'Ing. M. Torres',
    cuposOcupados: 12,
    cuposTotales: 25,
    estudiantes: [],
  ),
  const GrupoLaboratorio(
    id: 'G4',
    curso: 'Inteligencia Artificial',
    grupoLetra: 'C',
    horario: 'Jue 16:00 - 18:00',
    docente: 'Ing. C. Mendoza',
    cuposOcupados: 5,
    cuposTotales: 22,
    estudiantes: [],
  ),
];