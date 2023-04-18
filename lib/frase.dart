import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'App frases aleatórias',
  ));
}
class frases extends StatefulWidget {
  const frases({Key? key}) : super(key: key);

  @override
  State<frases> createState() => _frasesState();
}

class _frasesState extends State<frases> {

  var _frases = [
    'Sabe como chama a sorveteria do Michel Teló? Ice Te Pego.',
    'Qual é o doce preferido dos átomos? Pé-de-moléculas.',
    'Havia dois caminhões voando, um caiu, o outro não; pois era um caminhão pipa (ATUMALAKA). ',
    'De todos os ingredientes da vida, a gratidão é o mais doce.',
    'Eu prefiro vinho doce. A Débora, Secco.',
    'Eu morava numa ilha e me mudei para outra. Isso não foi um trocadilho, mas uma trocadilha.',
    'Gente que sabe fazer bolo de chocolate, com recheio e cobertura nem é gente. É um anjo que veio para nos fazer feliz.',
  ];

  var _frasesGerada= 'Clique abaixo para gerar uma frase!';

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _frasesGerada=_frases[numeroSorteado];
    });
  }
  @override
  Widget build(BuildContext){
    return Scaffold(
        appBar: AppBar(
          title: Text('Frases do Dia'),
          backgroundColor: Colors.amber,
        ),
        body: Center(
            child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(''))
            //image: Image('image/fundodoce.jpg')
            ),

              padding: EdgeInsets.all(16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('image/Doceria.png'
                    ),
                    Text(_frasesGerada,
                      style: TextStyle(
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        color: Colors.amber,

                      ),
                    ),
                    ElevatedButton(
                        onPressed: _gerarFrase,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber

                        ),
                        child: Text('nova Frase',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            )
                        )
                    ),
                  ]
              ),
            )
        )
    );
  }
}

