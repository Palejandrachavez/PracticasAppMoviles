import 'package:flutter/material.dart';
import 'package:practicaappmovilesu2/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'hola quetal', fromWho: FromWho.me),
    Message(text: 'vamo a jugar lolsiño', fromWho: FromWho.me),
    Message(text: 'ya me voy a dormir', fromWho: FromWho.hers),
    Message(text: 'andale pues', fromWho: FromWho.hers)
  ];
}
