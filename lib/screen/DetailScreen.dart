import 'package:flutter/material.dart';
import 'package:examen/constantes.dart';
import 'package:examen/model/medicos.dart';

class DetailScreen extends StatelessWidget {
  final Medicos medicos;
  const DetailScreen({Key? key, required this.medicos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(medicos.nombredocrecibeS),
      ),
      body: Container(
          // a todo el texto le da un padding de 20 en todos lados
          padding: const EdgeInsets.all(20.0),
          child: Column(
            //alinea elementos en la izquierda
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: secondarycolor, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('De: ${medicos.nombredocenviaF}',
                      style: nombreQuienEnviaF),
                  subtitle: Text(
                    'Para: ${medicos.nombredocrecibeS}',
                    style: nombreQuienRecibeS,
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: secondarycolor, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  contentPadding: EdgeInsets.all(30.0),
                  leading: Icon(Icons.ballot_outlined),
                  title: Text(
                    'Especialidad:  ${medicos.especialidad}             '
                    'Fecha:   ${medicos.fecha}',
                    style: fecha,
                  ),
                  subtitle: Text(
                    'Mensaje:    ${medicos.cuerpo}',
                    style: cuerpo,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
