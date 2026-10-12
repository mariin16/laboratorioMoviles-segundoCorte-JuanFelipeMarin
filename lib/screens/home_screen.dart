import 'package:flutter/material.dart';
import '../widgets/post_card.dart';
import '../widgets/banner.dart';
import '../widgets/image_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView( 
      children: const [
        MiBanner(
          titulo: 'Bienvenido',
          descripcion: 'A mi app xd',
        ),
        SizedBox(height: 10),
        Carrusel(),
        SizedBox(height: 10),

        PostCard(usuario: '@hola123', descripcion: 'hola a todos 123123123'),
        PostCard(usuario: '@usuariooo', descripcion: 'este es un post aaa'),
      ],
    );
  }
}