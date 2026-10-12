import 'package:flutter/material.dart';

class Carrusel extends StatelessWidget {
  const Carrusel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: const [
          Tarjeta(texto: '1', color: Color.fromARGB(255, 254, 43, 28)),
          Tarjeta(texto: '2', color: Color.fromARGB(255, 153, 26, 176)),
          Tarjeta(texto: '3', color: Color.fromARGB(255, 2, 196, 176)),
          Tarjeta(texto: '4', color: Color.fromARGB(255, 64, 165, 67)),
          Tarjeta(texto: '5', color: Color.fromARGB(255, 192, 239, 38)),
          Tarjeta(texto: '6', color: Color.fromARGB(255, 225, 27, 126)),
        ],
      ),
    );
  }
}

class Tarjeta extends StatelessWidget {
  final String texto;
  final Color color;

  const Tarjeta({super.key, required this.texto, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: const EdgeInsets.all(5),
      color: color,
      alignment: Alignment.center,
      child: Text(
        texto,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}