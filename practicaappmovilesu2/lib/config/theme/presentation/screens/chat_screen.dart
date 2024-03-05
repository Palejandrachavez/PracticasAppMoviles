import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practicaappmovilesu2/config/theme/presentation/widgets/my_mensaje_bubble.dart';
import 'package:practicaappmovilesu2/config/theme/presentation/widgets/squirtle_message_bubble.dart';

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
  const _chatView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 101,
              itemBuilder: ((context, index) {
                return (index % 2 == 0)
                    ? const MyMessageBubble()
                    : const SquirtleMessageBubble();
              }),
            ))
          ],
        ),
      ),
    );
  }
}
