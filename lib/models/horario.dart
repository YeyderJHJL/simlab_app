class ItemHorario {
  final String dia;
  final String curso;
  final String hora;
  final String aula;
  final bool tieneCruce;

  const ItemHorario({
    required this.dia,
    required this.curso,
    required this.hora,
    required this.aula,
    this.tieneCruce = false,
  });
}

final List<ItemHorario> miHorarioMock = [
  const ItemHorario(
    dia: 'Lunes',
    curso: 'Plataformas Emergentes (Lab A)',
    hora: '08:00 - 10:00',
    aula: 'Lab 201 - UNSA',
    tieneCruce: true,
  ),
  const ItemHorario(
    dia: 'Martes',
    curso: 'Sistemas Distribuidos (Lab A)',
    hora: '14:00 - 16:00',
    aula: 'Lab 104 - UNSA',
    tieneCruce: false,
  ),
  const ItemHorario(
    dia: 'Miércoles',
    curso: 'Sin asignación',
    hora: '-',
    aula: '-',
    tieneCruce: false,
  ),
  const ItemHorario(
    dia: 'Jueves',
    curso: 'Inteligencia Artificial (Lab C)',
    hora: '16:00 - 18:00',
    aula: 'Lab 203 - UNSA',
    tieneCruce: false,
  ),
];