// aplicativo usando StateFul ( com Mudança de Estado => ReBuild da Tela)

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // Método que identifica as mudanças de estado e chama a reconstrução da tela
  @override
  State<MyApp> createState() => _MyAppState(); // arrow function
}

// Classe criada para construir a janela, toda ação é escrita aqui
class _MyAppState extends State<MyApp> {
  // variável para identificar o nº de clicks no botão
  int contador = 0;

  // Build da tela
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Apicativo com StateFull - Contador")
      ),

      // Container Padding -> espaçamento interno
      body: Padding(
        padding: EdgeInsets.all(8), // espaçamento de 8 px em todos os lados

        // Container Center -> centraliza os elementos no meio da tela(Lateral- margens Direita e Esquerda)
        child: Center(

          // Container Column -> permite adicionar children e organiza os elementos na vertical
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centraliza os elementos com relação ao Top e Bottom ⇕

            children: [
              Text("Nº de Click: $contador", style: TextStyle(fontSize: 20)),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    contador ++;
                  });
                },

                child: Text("Adicionar +1")
              )
            ]
          ),
        ),

      ),

    );
  }
}