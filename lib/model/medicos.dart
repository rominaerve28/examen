class Medicos {
  final int id;
  final String nombredocenviaF;
  final String especialidad;
  final String nombredocrecibeS;
  final DateTime fecha;
  final String cuerpo;
  bool read;

  Medicos(
      {required this.id,
      required this.nombredocenviaF,
      required this.especialidad,
      required this.nombredocrecibeS,
      required this.fecha,
      required this.cuerpo,
      this.read = false});
}
