import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeStateful(),
    ),
  );
}

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  var _frases = [
    'Vencedor não é aquele que sempre vence, mas sim aquele que nunca para de lutar.',
    'Não tenha medo da mudança. Coisas boas se vão para que melhores possam vir.',
    'Nunca diga eu não consigo. Você consegue sim, basta ter força de vontade e fé.',
    'No fim tudo dá certo, e se não deu certo é porque ainda não chegou ao fim.',
    'Não é com desculpas que irá atingir os seus objetivos!',
    'Até o maior dos prédios começa no chão.',
    'Seu maior medo também pode ser sua maior motivação.',
    'Que a minha coragem seja sempre mais forte do que a tentação de parar e desistir.',
    'Enquanto você tiver força para lutar, terá possibilidade de ganhar.',
    'A sua felicidade pode estar no próximo passo.',
    'Acreditar é ser feliz ainda antes de acontecer.'
  ];

  void _fraseGerada() {
    var _aleatorio = new Random().nextInt(_frases.length);

    setState(() {
      _cliqueABaixo = _frases[_aleatorio];
    });
  }

  var _cliqueABaixo = 'Clique a baixo para gerar uma nova frase!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.amber),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.network(
              "https://lh3.googleusercontent.com/vfeRgC6Qky8U4HCEAVU8PIFlUYO1LjtvuRzRyOK1o_HEpGcirbq9D-tVR4Tr06FWRJM",
              width: 100,
            ),
            Text(
              _cliqueABaixo,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            RaisedButton(
              child: Text(
                'Nova Frase',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: _fraseGerada,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
