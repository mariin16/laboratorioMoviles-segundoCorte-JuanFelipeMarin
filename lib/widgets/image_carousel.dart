import 'package:flutter/material.dart';

class Carrusel extends StatelessWidget {
  const Carrusel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: const [
          Tarjeta(
            nombre: 'Ana',
            foto: 'https://picsum.photos/200',
          ),
          Tarjeta(
            nombre: 'Luis',
            foto: 'https://picsum.photos/200',
          ),
          Tarjeta(
            nombre: 'Maria',
            foto: 'https://picsum.photos/200',
          ),
          Tarjeta(
            nombre: 'Carlos',
            foto: 'https://picsum.photos/200',
          ),
          Tarjeta(
            nombre: 'Sofia',
            foto: 'https://picsum.photos/200',
          ),
          Tarjeta(
            nombre: 'Diego',
            foto: 'https://picsum.photos/200',
          ),
        ],
      ),
    );
  }
}

class Tarjeta extends StatelessWidget {
  final String nombre;
  final String foto;

  const Tarjeta({super.key, required this.nombre, required this.foto});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(foto),
          ),
          const SizedBox(height: 5),

      
          Text(nombre, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}