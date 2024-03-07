import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SquirtleMessageBubble extends StatelessWidget {
  const SquirtleMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.primary, borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("probando.."),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const _ImageBubble(),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    print('anchoo${Size.width}* ${Size.width * 0.7}');

    return ClipRRect(
      child: Image.network(
        width: Size.width * 0.4,
        height: Size.height * 0.2,
        fit: BoxFit.cover,
        "https://i.pinimg.com/originals/18/8e/a6/188ea685559ff1bd99001459e9a23985.jpg",
        loadingBuilder: (context, child, loadingProgress) =>
            (loadingProgress == null)
                ? child
                : Container(
                    width: Size.width * 0.7,
                    height: Size.height * 0.2,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: const Text("CARGANDO MOMASO.."),
                  ),
      ),
    );
  }
}
