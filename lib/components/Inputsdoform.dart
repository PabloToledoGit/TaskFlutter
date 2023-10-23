import 'package:flutter/material.dart';

class Inputs extends StatefulWidget {
  const Inputs({super.key, required this.conteudoInput});
  final String conteudoInput;

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {

  final TextEditingController _controller = TextEditingController();

  String valorDoTextField = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _controller,
        onChanged: (text){
          setState(() {
            valorDoTextField = text;
          });
        },
        decoration: InputDecoration(
          hintText: widget.conteudoInput,
        ),
      ),
    );
  }}

class Formulario extends StatelessWidget {
  const Formulario({super.key,});


  @override
  Widget build(BuildContext context) {
    return const Form(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Inputs(conteudoInput:'Digite o nome da habilidade',),
              Inputs(conteudoInput:'Digite o nivel de dificuldade',),
              Inputs(conteudoInput:'Adicione uma imagem',),
            ],
          ),
        ));
  }
}