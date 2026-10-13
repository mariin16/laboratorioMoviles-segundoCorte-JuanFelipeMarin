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
          titulo: 'Estados',
          descripcion: 'Mira lo que estan haciendo tus contactos',
        ),
        SizedBox(height: 10),
        Carrusel(),
        SizedBox(height: 10),

        PostCard(usuario: '@mariaaaaa', descripcion: 'hola a todos 123123123'),
        PostCard(usuario: '@diegogamer123', descripcion: 'este es un post aaa'),
      ],
    );
  }
}