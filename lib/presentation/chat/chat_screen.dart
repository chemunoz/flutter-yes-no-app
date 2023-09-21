import 'package:flutter/material.dart';

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
        title: Row(
          children: [const Text('Si-No App'), const Icon(Icons.ac_unit)],
        ),
        centerTitle: false,
      ),
    );
  }
}
