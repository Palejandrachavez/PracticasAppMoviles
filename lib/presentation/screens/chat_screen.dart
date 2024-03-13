import 'package:flutter/material.dart';
import 'package:practicaappmovilesu2/domain/entities/message.dart';
import 'package:practicaappmovilesu2/presentation/providers/chat_provider.dart';
import 'package:practicaappmovilesu2/presentation/shared/message_field_box.dart';
import 'package:practicaappmovilesu2/presentation/widgets/my_message_bubble.dart';
import 'package:practicaappmovilesu2/presentation/widgets/squirtle_message_bubble.dart';
import 'package:provider/provider.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

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
          title: const Text("mi practica app movil"),
          centerTitle: true,
        ),
        body: const _ChatView());
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    final ChatProvider chatProvider = context.watch<ChatProvider>();

    return SafeArea(
        child: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 100, 25, 119),
            Color.fromARGB(255, 168, 174, 235),
            Color.fromARGB(255, 208, 170, 112),
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
                    controller: chatProvider.Chatcontroller,
                    itemCount: chatProvider.messageList.length,
                    itemBuilder: ((context, index) {
                      //  print(chatProvider.messageList[index].text);

                      return (chatProvider.messageList[index].fromWho ==
                              FromWho.hers)
                          ? SquirtleMessageBubble(
                              message: chatProvider.messageList[index])
                          : MyMessageBubble(
                              message: chatProvider.messageList[index]);
                    }))),
            MessageFieldBox(
              onValue: (value) => chatProvider
                  .sendMessage(value), //es el valor que la persona escribe
            ),
          ],
        ),
      ),
    ));
  }
}
