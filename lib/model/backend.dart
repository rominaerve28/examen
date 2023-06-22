import 'package:examen/model/medicos.dart';

class Backend {
  static final Backend _backend = Backend._internal();
  factory Backend() {
    return _backend;
  }
  Backend._internal();

  final _medicos = [
    Medicos(
        id: 1,
        nombredocenviaF: 'Raúl Vallejo',
        especialidad: 'Odontologo',
        nombredocrecibeS: 'Matilde Véliz',
        fecha: DateTime(1969, 06, 05),
        cuerpo: 'Hola, necesito de su ayuda'),
    Medicos(
        id: 2,
        nombredocenviaF: 'Raúl Vallejo',
        especialidad: 'Medico General',
        nombredocrecibeS: 'Matilde Véliz',
        fecha: DateTime(1959, 05, 09),
        cuerpo: 'Responder Urgente'),
    Medicos(
        id: 3,
        nombredocenviaF: 'Jacqueline Véliz',
        especialidad: 'Psicología',
        nombredocrecibeS: 'Matilde Véliz',
        fecha: DateTime(1992, 10, 22),
        cuerpo: 'Hola, porfavor realizar encuesta'),
  ];

  List<Medicos> obtenerMedicos() {
    return _medicos;
  }

  void marcarComoLeido(int id) {
    final index = _medicos.indexWhere((medico) => medico.id == id);
    _medicos[index].read = true;
  }

  void eliminar(int id) {
    _medicos.removeWhere((medico) => medico.id == id);
  }
}
