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
          title: Text('Aplicativo Musicas'),
        ),
        body: Column(
          children: [
            Musicas("Beyonce",
                "https://i.scdn.co/image/ab67616d0000b273ff5429125128b43572dbdccd"),
            Musicas(" Guns n Roses",
                "https://pbs.twimg.com/profile_images/1404438180305248259/2zyatkDX_400x400.jpg"),
            Musicas("Bon Jovi",
                "https://akamai.sscdn.co/uploadfile/letras/albuns/1/2/4/0/23341443633556.jpg"),
            Musicas("Scorpions",
                "https://i0.wp.com/www.wikimetal.com.br/wp-content/uploads/2014/12/1000x1000.jpg?resize=731%2C658&ssl=1"),
          ],
        ),
      ),
    );
  }
}

class Musicas extends StatelessWidget {
  final String musica;
  final String img;
  const Musicas(this.musica, this.img, {super.key});

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
                  musica,
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
