import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplicativo Disciplinas'),
        ),
        body: Column(
          children: [
            Disciplinas("Matematica",
                "https://static.preparaenem.com/2023/01/esquema-ilustrativo-traz-itens-atribuidos-aos-estudos-da-matematica-como-calculadora-regua-compasso-etc.jpg"),
            Disciplinas(" Portugues",
                "https://blog.etapa.com.br/hubfs/Not%C3%ADcias%202019%20-%20Curso/Home-Curso_Tendencias_0008_Portugu%C3%AAs.jpg"),
            Disciplinas("Ciencias",
                "https://www.es.gov.br/Media/PortalES/_Profiles/c4d8c6e6/d8d1f292/WhatsApp%20Image%202020-08-12%20at%2012.13.32.jpeg?v=637782531146079650"),
            Disciplinas("BigData",
                "https://www.totvs.com/wp-content/uploads/2023/05/image-57.png"),
          ],
        ),
      ),
    );
  }
}

class Disciplinas extends StatelessWidget {
  final String disciplina;
  final String img;
  const Disciplinas(this.disciplina, this.img, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Container(color: Colors.blue, height: 140),
          Container(
            color: Colors.white,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.grey,
                  height: 100,
                  width: 80,
                  child: Image.network(
                    img,
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  disciplina,
                  style: TextStyle(fontSize: 22),
                ),
                ElevatedButton(
                    onPressed: () {
                      print("Botão pressionado");
                    },
                    child: Icon(Icons.arrow_drop_up)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}