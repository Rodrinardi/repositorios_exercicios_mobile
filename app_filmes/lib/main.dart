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
          title: Text('Aplicativo Filmes'),
        ),
        body: Column(
          children: [
            Filmes("Harry Potter",
                "https://t.ctcdn.com.br/P8ueiLmxaPmC7knmdjau7WVjKAI=/768x432/smart/i525540.jpeg"),
            Filmes(" Jogos Vorazes",
                "https://vivariomarrecife.com.br/wp-content/uploads/2019/06/Capa-9.jpg"),
            Filmes("Avengers",
                "https://t.ctcdn.com.br/YkUMi8CQgOy8PPO5kBSMCU-3mtQ=/1024x576/smart/i887.jpeg"),
            Filmes("Titanic",
                "https://upload.wikimedia.org/wikipedia/pt/2/22/Titanic_poster.jpg"),
          ],
        ),
      ),
    );
  }
}

class Filmes extends StatelessWidget {
  final String filme;
  final String img;
  const Filmes(this.filme, this.img, {super.key});

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
                  filme,
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
