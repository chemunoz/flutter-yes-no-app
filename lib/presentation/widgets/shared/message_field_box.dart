import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    // Recojo aquí los colores del theme aplicado
    final colors = Theme.of(context).colorScheme;

    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: colors.primary),
              borderRadius: BorderRadius.circular(40)),
          filled: true,
          suffixIcon: IconButton(
            icon: const Icon(Icons.send_outlined),
            onPressed: () {},
          )),
    );
  }
}