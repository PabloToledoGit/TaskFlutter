

import 'package:flutter/material.dart';

import 'difficulty.dart';

class Task extends StatefulWidget {
  const Task(
      {super.key,
        required this.nome,
        required this.foto,
        required this.dificuldade});

  final String nome;
  final String foto;
  final int dificuldade;

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: AlignmentDirectional.topCenter,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(4.0)),
                width: 500,
                height: 140,
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                                width: 200,
                                child: LinearProgressIndicator(
                                  color: Colors.white,
                                  value: (widget.dificuldade > 0)
                                      ? (nivel / widget.dificuldade) / 10
                                      : 1,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Level $nivel',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.0)),
                width: 500,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.grey,
                      width: 120,
                      height: 100,
                      child: Image.network(
                        widget.foto,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            widget.nome,
                            style: const TextStyle(fontSize: 24),
                          ),
                        ),
                        Difficulty(dificuldadeLevel: widget.dificuldade,)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        backgroundColor: Colors.blue,
                        onPressed: () {
                          setState(() {
                            nivel++;
                          });
                        },
                        child: const Icon(Icons.arrow_drop_up),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}