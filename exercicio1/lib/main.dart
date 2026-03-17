import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PerfilPage(),
    );
  }
}

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // APPBAR
      appBar: AppBar(
        backgroundColor: Color(0xFF244A9A),
        centerTitle: true,
        title: const Text(
          "Perfil",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // BODY
      body: Column(
        children: [

          // BANNER / STACK
          Container(
            color: Color(0xFFD7DEE9),
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [

                // ROW 1 (share icon, foto perfil, config icon)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Icon(Icons.reply, size: 32),

                    CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.grey.shade300,
                      child: Icon(Icons.person, size: 60, color: Colors.grey),
                    ),

                    Icon(Icons.settings, size: 32),
                  ],
                ),

                const SizedBox(height: 10),

                // NOME
                const Text(
                  "NOME DO MELIANTE",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 20),

                // ROW 2 (seguidores / seguindo / curtidas)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Column(
                      children: const [
                        Text("seguidores"),
                        Text("XXXX", style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),

                    Column(
                      children: const [
                        Text("seguindo"),
                        Text("XXXX", style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),

                    Column(
                      children: const [
                        Text("curtidas"),
                        Text("XXXX", style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // ROW 3 (social icons)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [

                    Icon(Icons.camera_alt, size: 40), // instagram
                    Icon(Icons.facebook, size: 40),
                    Icon(Icons.code, size: 40), // github
                    Icon(Icons.business, size: 40), // linkedin
                    Icon(Icons.chat, size: 40), // whatsapp

                  ],
                ),
              ],
            ),
          ),

          // MAIN
          Expanded(
            child: Container(
              color: Colors.grey.shade300,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [

                  InfoField("Habilidades"),
                  InfoField("Localização"),
                  InfoField("Emprego"),
                  InfoField("Idade"),
                  InfoField("Hobbies"),

                ],
              ),
            ),
          ),
        ],
      ),

      // BOTTOM NAVBAR
      bottomNavigationBar: Container(
        height: 80,
        color: Color(0xFF5D73A0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            BottomItem(Icons.search, "Search", Colors.white),
            BottomItem(Icons.home, "Home", Colors.white),
            BottomItem(Icons.person, "Perfil", Colors.black),

          ],
        ),
      ),
    );
  }
}


// WIDGET DOS CAMPOS DE TEXTO
class InfoField extends StatelessWidget {
  final String label;

  const InfoField(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text("$label:"),
          Divider(
            thickness: 1,
            color: Colors.black,
          ),

        ],
      ),
    );
  }
}


// ITEM DA NAVBAR
class BottomItem extends StatelessWidget {

  final IconData icon;
  final String text;
  final Color color;

  const BottomItem(this.icon, this.text, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Icon(icon, size: 30, color: color),
        Text(
          text,
          style: TextStyle(color: color),
        )

      ],
    );
  }
}