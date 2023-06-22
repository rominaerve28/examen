import 'package:flutter/material.dart';
import 'package:examen/constantes.dart';
import 'package:examen/model/medicos.dart';

class MedicosWidget extends StatelessWidget {
  final Medicos medicos;
  final Function onTap;
  final Function onSwipe;
  final Function onLongPress;

  const MedicosWidget(
      {Key? key,
      required this.medicos,
      required this.onTap,
      required this.onSwipe,
      required this.onLongPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
        onSwipe(medicos.id);
      },
      onLongPress: () {
        onLongPress(medicos.id);
      },
      onTap: () {
        onTap(medicos);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        height: 80.0,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 12.0,
                decoration: BoxDecoration(
                    color: medicos.read ? Colors.transparent : primaryColor,
                    shape: BoxShape.circle),
              ),
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //substring permite obtener solo 10 datos
                  Text(medicos.fecha.toString().substring(0, 10), style: fecha),
                  Text(medicos.especialidad, style: cuerpo),
                  Text(medicos.nombredocrecibeS, style: nombreQuienRecibeS),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
