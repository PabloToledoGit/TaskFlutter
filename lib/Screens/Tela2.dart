import 'package:flutter/material.dart';

import '../components/Inputsdoform.dart';
import '../components/Task.dart';

class Tela2 extends StatefulWidget {
  const Tela2({super.key});

  @override
  State<Tela2> createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Nova Habilidade'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 400,
            height: 550,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 3),
            ),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Formulario(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
