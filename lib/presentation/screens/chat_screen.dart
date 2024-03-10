import 'package:flutter/material.dart';
import 'package:practicaappmovilesu2/domain/entities/message.dart';
import 'package:practicaappmovilesu2/presentation/providers/chat_provider.dart';
import 'package:practicaappmovilesu2/presentation/shared/message_field_box.dart';
import 'package:practicaappmovilesu2/presentation/widgets/my_mensaje_bubble.dart';
import 'package:practicaappmovilesu2/presentation/widgets/squirtle_message_bubble.dart';
import 'package:provider/provider.dart';

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
      body: const _chatView(),
    );
  }
}

class _chatView extends StatelessWidget {
  const _chatView();

  @override
  Widget build(BuildContext context) {
    final ChatProvider chatProvider = context.watch<ChatProvider>();

    return SafeArea(
        child: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 245, 62, 62),
            Color.fromARGB(255, 46, 49, 81),
            Color.fromARGB(255, 199, 140, 140),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: chatProvider.messageList.length,
                    itemBuilder: ((context, index) {
                      print(chatProvider.messageList[index].text);

                      return (chatProvider.messageList[index].fromWho ==
                              FromWho.me)
                          ? MyMessageBubble(
                              message: chatProvider.messageList[index].text)
                          : SquirtleMessageBubble(
                              message: chatProvider.messageList[index].text,
                            );
                    }))),
            const MessageFieldBox()
          ],
        ),
      ),
    ));
  }
}
