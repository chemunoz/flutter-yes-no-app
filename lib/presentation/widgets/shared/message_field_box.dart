import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    // Nos permite tener control sobre el Input
    final textController = TextEditingController();

    // Para mantener el foco en el input
    final FocusNode focusNode = FocusNode();

    // Creo el estilo del input en una variable
    // para poder aplicarlo en varias propiedades ('enabledBorder' y 'focusedBorder')
    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    // Guardamos en una variable toda la decoración
    // para dejar más limpio el 'TextFormField'
    final inputDecoration = InputDecoration(
        hintText: 'End your message with a "?"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            final textValue = textController.value.text;
            print('button: $textValue');
            // Limpiamos tras enviar
            textController.clear();
          },
        ));

    return TextFormField(
      controller: textController,
      focusNode: focusNode,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Submit value: $value');
        // Limpiamos tras enviar
        textController.clear();
        // Devolvemos el foco al input
        focusNode.requestFocus();
      },
      // Cuando clickamos fuera queremos que pierda el foco
      // y así minimiza el teclado que tenga levantado
      onTapOutside: (event) {
        focusNode.unfocus();
      },
    );
  }
}
