import 'package:flutter/material.dart';
import 'package:practicaappmovilesu2/domain/entities/message.dart';
import 'package:practicaappmovilesu2/config/helpers/get_yes_no_answer.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController Chatcontroller = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    if (text.endsWith('?')) {
      await herReply();
    }
    notifyListeners();
    moveScrollToBotton();
  }

  Future<void> moveScrollToBotton() async {
    await Future.delayed(const Duration(milliseconds: 100));
    Chatcontroller.animateTo(Chatcontroller.position.maxScrollExtent,
        duration: const Duration(microseconds: 300), curve: Curves.easeOut);
  }

  Future<void> herReply() async {
    final Message herMessage = await getYesNoAnswer.getAnswer();
    messageList.add(herMessage);
  }
}
