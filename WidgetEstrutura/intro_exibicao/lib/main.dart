// tela para estudo dos widgets de exibição
//  text, image, icon entre outros

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    // Configurações iniciais do app //

    //router => rotas de navegação

    //home => página inicial
    home: MyApp(),

    //themeApp => (claro/escuro)

  )); //gosto de colocar o MaterialApp no void main
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // estrutura da tela
  @override
  Widget build(BuildContext context) {
    return Scaffold( // elemento principal da tela
      // appbar, drawer, bnBar, body, fabutton, snakebar
      appBar: AppBar(
        title: Text("Exemplos de Widget de exibição"),
      ),

      // Adicionar um elemento de scroll


      body: SingleChildScrollView( // mais usado para scroll de tela inteira
        child: Padding(
          padding: EdgeInsets.all(16),
        
          // Adicionar um child com um column dentro
          child: Expanded( // mais usado para scroll em partes da tela
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              
              children: [
                Text(
                  "Explorando o Flutter",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // ainda dentro da column, adicionar uma "image"
                Image.network(
                  // link URL da imagem
                  "https://media.istockphoto.com/id/2261499615/pt/foto/juvenile-african-penguin-standing-on-sandy-cape-beach.jpg?s=2048x2048&w=is&k=20&c=VZah_TAzzJBln8SZFEzhtIMWqKmgC_XVK9pZ5VIehTU=",
                  height: 400,
                  fit: BoxFit.contain
                ),
                Image.asset(
                  "assets/img/aiai.jpg",
                  height: 250,
                  fit: BoxFit.cover
                )
              ],

            ),
          ),
          
        ),
      ),

    );
  }
}
