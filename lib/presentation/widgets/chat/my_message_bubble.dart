import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    // Recojo el esquema de colores del Theme la app (está dentro de "context")
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.primary, borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Eiusmod et in velit sit ullamco.',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
