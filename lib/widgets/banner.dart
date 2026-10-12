import 'package:flutter/material.dart';


class MiBanner extends StatelessWidget {
  final String titulo;
  final String descripcion;

  const MiBanner({
    super.key,
    required this.titulo,
    required this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titulo,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 5),
                Text(descripcion,
                    style: const TextStyle(color: Colors.white)),
              ],
            ),
          ),
          const Icon(Icons.person, color: Colors.white, size: 40),
        ],
      ),
    );
  }
}