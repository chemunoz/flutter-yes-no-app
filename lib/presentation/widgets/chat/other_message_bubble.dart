import 'package:flutter/material.dart';

class OtherMessageBubble extends StatelessWidget {
  const OtherMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    // Recojo el esquema de colores del Theme la app (está dentro de "context")
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.secondary, borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Eu nulla consequat ullamco dolore',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 5),
        _ImageBubble(),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Nos da info sobre el dispositivo en donde estamos ejecutando
    // en este caso las dimensiones del dispositivo
    // 'context' es el árbol de widgets
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/no/8-5e08abbe5aacd2cf531948145b787e9a.gif',
        // Vamos a usar el 70% de la anchura del dispositivo
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        // 'child' se refiere a la propia imagen
        loadingBuilder: (context, child, loadingProgress) {
          // Si ya se cargó la imagen, la devolvemos
          if (loadingProgress == null) return child;

          // Si está cargando vamos a devolver un loading
          return Container(
            // Vamos a usar el 70% de la anchura del dispositivo
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('Enviando una imagen...'),
          );
        },
      ),
    );
  }
}
