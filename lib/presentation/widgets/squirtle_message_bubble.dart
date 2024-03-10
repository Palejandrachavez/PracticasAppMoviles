import 'package:flutter/material.dart';

class SquirtleMessageBubble extends StatelessWidget {
  final String message;

  const SquirtleMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.primary, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(message),
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
    final width = Size.width * 0.7;
    final height = Size.height * 0.5;

    print('anchoo${Size.width}* ${Size.width * 0.7}');

    return ClipRRect(
      child: Image.network(
        width: width,
        height: height,
        fit: BoxFit.cover,
        "https://i.pinimg.com/originals/18/8e/a6/188ea685559ff1bd99001459e9a23985.jpg",
        loadingBuilder: (context, child, loadingProgress) =>
            (loadingProgress == null)
                ? child
                : Container(
                    width: width,
                    height: height,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: const Text("CARGANDO MOMASO.."),
                  ),
      ),
    );
  }
}
