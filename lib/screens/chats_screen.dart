import 'package:flutter/material.dart';
import '../widgets/chat_tile.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView( 
      padding: const EdgeInsets.symmetric(vertical: 10),
      children: const [
        ChatTile(nombre: 'Usuario 1', mensaje: 'Hola'),
        ChatTile(nombre: 'Usuario 2', mensaje: 'Chau'),
        ChatTile(nombre: 'Usuario 3', mensaje: 'Nos vemos'),
        ChatTile(nombre: 'Usuario 4', mensaje: 'Gracias'),
        ChatTile(nombre: 'Usuario 5', mensaje: 'OK'),
      ],
    );
  }
}