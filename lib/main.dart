import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Tarefas'),
            backgroundColor: Colors.cyan,
          ),
          body: ListView(
            children: [
              Task(nome: 'Aprendendo Flutter'),
              Task(nome: 'Aprendendo Luta'),
              Task(nome: 'Aprendendo Inglês'),
              Task(nome: 'Aprendendo Andar de Skate'),
            ],
          )),
    );
  }
}

class Task extends StatefulWidget {
  const Task({super.key, required this.nome});

  final String nome;

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
                color: Colors.blue,
                width: 400,
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
                            child: Container(
                                width: 200,
                                child: LinearProgressIndicator(
                                  color: Colors.white,
                                  value: nivel / 20,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Nivel $nivel'),
                          ),
                        ],
                      ),
                    )),
              ),
              Container(
                color: Colors.white,
                width: 400,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.grey,
                      width: 120,
                      height: 100,
                    ),
                    Container(
                      width: 200,
                      child: Text(
                        widget.nome,
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            nivel++;
                          });
                        },
                        child: Icon(Icons.arrow_drop_up),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
