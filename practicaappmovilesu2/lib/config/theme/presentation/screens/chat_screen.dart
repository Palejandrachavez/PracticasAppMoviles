import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class chat extends StatelessWidget {
  const chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://assets.pokemon.com/assets/cms2/img/pokedex/full/151.png'),
            ),
          ),
          title: Text("mi practica app movil"),
          centerTitle: true,
        ),
        body: const _chatView());
  }
}

class _chatView extends StatelessWidget {
  const _chatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(child: Container(color: Colors.blue)),
          const Text("mensaje 1 "),
          const Text("hola mundito")
        ],
      ),
    ));
  }
}
