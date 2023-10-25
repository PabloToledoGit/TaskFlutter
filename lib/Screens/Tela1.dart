import 'package:flutter/material.dart';

import '../components/Task.dart';

class Tela extends StatefulWidget {
  const Tela({super.key});

  @override
  State<Tela> createState() => _TelaState();
}

class _TelaState extends State<Tela> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lista de Habilidades', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: AnimatedOpacity(
        duration: const Duration(milliseconds: 1000),
        opacity: opacidade ? 1 : 0,
        child: Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: const Lista()
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        backgroundColor: Colors.black,
        child: const Icon(Icons.incomplete_circle_sharp, color: Colors.white,),
      ),
    );
  }
}

class Lista extends StatefulWidget {
  const Lista({super.key});

  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Task(
          nome: 'Aprendendo Flutter',
          foto:
          'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
          dificuldade: 4,
        ),
        Task(
          nome: 'Aprendendo Luta',
          foto: 'https://img.freepik.com/fotos-gratis/dois-boxeador-profissional-boxe-em-preto-fumarento_155003-14259.jpg',
          dificuldade: 5,
        ),
        Task(
          nome: 'Aprendendo Inglês',
          foto: 'https://cdn.wizard.com.br/wp-content/uploads/2022/04/19182442/as-dez-melhores-maneiras-de-aprender-ingles-mais-rapido.jpg',
          dificuldade: 3,
        ),
        Task(
          nome: 'Aprendendo Andar de Skate',
          foto: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSo3E3jngVfrItC7kxjdaL0Nw32EH7gYmGuoA&usqp=CAU',
          dificuldade: 2,
        ),
        SizedBox(height: 80,)
      ],
    );
  }
}

