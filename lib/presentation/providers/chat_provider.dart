import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  final ScrollController chatScrollController=ScrollController();
  final  getYesNoAnswer =GetYesNoAnswer();

  List<Message> messageList=[
    Message(text: 'Hola Espidey', fromwho: Fromwho.me),
    Message(text: 'Ya estas con los vengadores', fromwho: Fromwho.me)

  ];

  Future<void>sendMessage(String text,)async{
    if(text.isEmpty)return;

    final newMessage=Message(text: text, fromwho: Fromwho.me);
    messageList.add(newMessage);

    if(text.endsWith('?')){
      await herReply();
    }

    notifyListeners();
    moveScrollToBottom();

  }
    Future<void> herReply() async{
      final herMessage=await getYesNoAnswer.getAnswer();
      messageList.add(herMessage);
      notifyListeners();

      moveScrollToBottom();
    }



  Future<void> moveScrollToBottom()async{
    await Future.delayed(const Duration(milliseconds: 100)); 

    chatScrollController.animateTo(
      chatScrollController.position.minScrollExtent, 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.easeOut
      );

  }

}