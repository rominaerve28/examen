import 'package:flutter/material.dart';
import 'package:examen/constantes.dart';
import 'package:examen/model/backend.dart';
import 'package:examen/model/medicos.dart';
import 'package:examen/widget/MedicosWidget.dart';
import 'DetailScreen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  var medicoos = Backend().obtenerMedicos();

  void marcarComoLeido(int id) {
    Backend().marcarComoLeido(id);
    setState(() {
      medicoos = Backend().obtenerMedicos();
    });
  }

  void eliminar(int id) {
    Backend().eliminar(id);
    setState(() {
      medicoos = Backend().obtenerMedicos();
    });
  }

  void mostrar(Medicos medicos) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DetailScreen(medicos: medicos);
    }));

    Backend().marcarComoLeido(medicos.id);
    setState(() {
      medicoos = Backend().obtenerMedicos();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: medicoos.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: secondarycolor,
            margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: MedicosWidget(
              medicos: medicoos[index],
              onTap: mostrar,
              onLongPress: marcarComoLeido,
              onSwipe: eliminar,
            ),
          );
        },
      ),
    );
  }
}
