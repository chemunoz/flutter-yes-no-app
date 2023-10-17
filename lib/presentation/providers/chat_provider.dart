import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(text: 'Hooola', fromWhom: FromWhom.mine),
    Message(text: 'Qué pasa tío!!', fromWhom: FromWhom.other),
  ];

  Future<void> sendMessage(String text) async {
    // TODO: implementar método
  }
}
