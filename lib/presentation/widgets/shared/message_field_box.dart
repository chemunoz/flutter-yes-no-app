import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    // Creo el estilo del input en una variable
    // para poder aplicarlo en varias propiedades ('enabledBorder' y 'focusedBorder')
    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    // Guardamos en una variable toda la decoración
    // para dejar más limpio el 'TextFormField'
    final inputDecoration = InputDecoration(
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          filled: true,
          suffixIcon: IconButton(
            icon: const Icon(Icons.send_outlined),
            onPressed: () {},
          ))

    return TextFormField(
      decoration: inputDecoration,
    );
  }
}
