import 'dart:nativewrappers/_internal/vm_shared/lib/compact_hash.dart';

import 'package:flutter/material.dart';

// Função principal (faz o app rodar) //
void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, //remove a flag do debug
      home: ToDoList(),
    ),
  );
}

// st = snipets (atalhos para códigos prontos, como a base dos inseridos abaixo ↓)



// Janela do app (com StateFul):

// 1º Class: identifica a mudança de estado -> chama o build
class ToDoList extends StatefulWidget {
  // Atributos:
  const ToDoList({super.key});

  // Métodos:
  @override
  State<ToDoList> createState() => _ToDoListState();
}

// 2º Class: a estrutura e lógica da construção da janela -> configura o build
class _ToDoListState extends State<ToDoList> {
  // Atributos:
  //final -> permite a mudança de valor uma única vez (escopo da variável)
  final TextEditingController _tarefaController = TextEditingController(); // pega o valor do input
  final List<Map<String,dynamic>> _tarefas = [];
  
  // Métodos:
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Tarefas"), centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.all(8), // espaçamento geral de 8px

        child: Column(
          children: [
            // Text Field -> input para adicionar novas tarefas
            TextField(
              controller: _tarefaController, // passa o valor do texto para o controller
              decoration: InputDecoration(
                labelText: "Digite uma Tarefa"
              ),
            ),

            SizedBox(
              height: 10, // espaçamento de altura
            ),

            ElevatedButton(
              onPressed: _adicionarTarefa,

              child: Text("Adicionar tarefa")
            ),

            // Expanded -> para listar as tarefas em modo de tela extendida
            Expanded(
              // Listar as tarefas da coleção
              child: ListView.builder(
                itemCount: _tarefas.length, //conta o nº de item na lista

                itemBuilder: (context,index)=> // retorna isso ↓
                  ListTile(
                    title: Text(
                      _tarefas[index]["título"],
                      style: TextStyle(
                        decoration: _tarefas[index]["concluída"] ? TextDecoration.lineThrough : null // ? => operador Ternário (if,else) -> se tarefa concluida , coloca um risco no texto
                      )
                    ),

                    leading: Checkbox(
                      value: _tarefas[index]["concluída"],

                      onChanged: (bool? valor)=> // retorna isso ↓
                      setState(
                        () {
                          _tarefas[index]["concluída"] = valor;
                        }
                      ),
                    ),
                  )
              )
            )
          ],
        ),
      ),
    );
  }

  void _adicionarTarefa() {
    if(_tarefaController.text.trim().isNotEmpty) {
      setState(
        () {
          //adiciona a tarefa na lista
          _tarefas.add(
            {
              "titulo" : _tarefaController.text,
              "concluida" : false
            }
          );

          //limpa o campo do input
          _tarefaController.clear();
        }
      );
    }
  }

}