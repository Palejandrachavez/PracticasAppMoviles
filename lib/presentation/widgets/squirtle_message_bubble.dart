import 'package:flutter/material.dart';
import 'package:practicaappmovilesu2/domain/entities/message.dart';

class SquirtleMessageBubble extends StatelessWidget {
  final Message message;

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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(message.text),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        _ImageBubble(
          imageURL: message.imageURl,
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  final String? imageURL;
  const _ImageBubble({this.imageURL});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
          width: size.width * 0.7,
          height: size.height * 0.2,
          fit: BoxFit.cover,
          imageURL!,
          loadingBuilder: (context, child, loadingProgress) =>
              (loadingProgress == null)
                  ? child
                  : Container(
                      width: size.width * 0.7,
                      height: size.height * 0.2,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: const Text("cargando imagen ..."),
                    )),
    );
  }
}
