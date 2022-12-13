import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool anime = false;
  bool programar = false;
  bool estudar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Utilizando checkbox"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("O que vc gosta de fazer?"),
            CheckboxListTile(
              value: anime,
              title: const Text("Assistir anime"),
              secondary: const Icon(Icons.emoji_emotions_outlined),
              // activeColor: Colors.black12,
              subtitle: const Text(
                "Vc prefere assistir animes dos mais variados tipos!",
              ),
              onChanged: (value) {
                setState(() {
                  anime = !anime;
                  programar = false;
                  estudar = false;
                });
              },
            ),
            CheckboxListTile(
              value: programar,
              title: const Text("Programar"),
              secondary: const Icon(Icons.emoji_objects_outlined),
              subtitle: const Text(
                  "Vc gosta de resolver problemas complexos utilizando linguagens de programação!"),
              onChanged: (value) {
                setState(
                  () {
                    programar = !programar;
                    estudar = false;
                    anime = false;
                  },
                );
              },
            ),
            CheckboxListTile(
              value: estudar,
              title: const Text("Estudar"),
              secondary: const Icon(Icons.book_outlined),
              subtitle: const Text("Vc está focado em aprender mais e mais!"),
              onChanged: (value) {
                setState(
                  () {
                    estudar = !estudar;
                    programar = false;
                    anime = false;
                  },
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  print("As opções foram salvadas com sucesso!");
                },
                style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(20))),
                child: const Text("Salvar"),
              ),
            )
            // Text("Comida brasileira"),
            // Checkbox(value: valor, onChanged: (value){
            //   setState(() {
            //     valor = value!;
            //   });
            //   print("O valor é: " + valor.toString());
            // })
          ],
        ),
      ),
    );
  }
}
