import 'package:flutter/material.dart';
import 'package:taskalura/components/Task.dart';

class Inputs extends StatefulWidget {
  const Inputs(
      {Key? key,
        required this.conteudoInput,
        this.controller, // Torna o controller opcional
        this.defaultController}) // Novo controlador padrão
      : super(key: key);

  final TextEditingController? controller;
  final TextEditingController? defaultController; // Controlador padrão
  final String conteudoInput;

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  late TextEditingController _controller; // Controlador que será usado

  @override
  void initState() {
    super.initState();
    // Se um controller foi fornecido, use-o; caso contrário, use o defaultController
    _controller = widget.controller ?? widget.defaultController ?? TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            onChanged: (controller) {
              setState(() {});
            },
            controller: _controller, // Use o _controller criado
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: widget.conteudoInput,
              fillColor: Colors.white,
              filled: true,
            ),
          ),
        ),
      ],
    );
  }
}

class Formulario extends StatefulWidget {
  Formulario({Key? key}) : super(key: key);

  final TextEditingController dificuldadeController = TextEditingController();
  final TextEditingController habilidadeController = TextEditingController();
  final TextEditingController imagemController = TextEditingController();

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Inputs(
              conteudoInput: 'Digite o nome da habilidade',
              controller: widget.habilidadeController, // Forneça um controlador específico
            ),

            Inputs(
              conteudoInput: 'Digite o nível de dificuldade',
              controller: widget.dificuldadeController,
            ),

            Inputs(
              conteudoInput: 'Adicione uma imagem',
              defaultController: widget.imagemController, // Use o controlador padrão
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 100,
                width: 72,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.network(widget.imagemController.text),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                  onPressed: () {
                    setState(() {

                    });

                  },
                  child: const Text('Crie')),
            )
          ],
        ),
      ),
    );
  }
}
