import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/others_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://info.mercadona.es/img-cont/es/1992-img.jpg'),
            ),
          ),
          title: const Row(
            children: [Text('Chat App'), Icon(Icons.ac_unit)],
          ),
          centerTitle: false,
        ),
        body: _ChatView());
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Indicamos que dejamos observando los cambios del ChatProvider
    final chatProvider = context.watch<ChatProvider>();

    // 'SafeArea' hace que todo su contenido esté
    // dentro del área clickable de cada SO
    // tanto en vertical como horizontal
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: chatProvider.messages.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messages[index];
                return (message.fromWhom == FromWhom.other)
                    ? OtherMessageBubble(message: message)
                    : MyMessageBubble(message: message);
              },
            )),
            // Caja de Texto
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: MessageFieldBox(),
            )
          ],
        ),
      ),
    );
  }
}
