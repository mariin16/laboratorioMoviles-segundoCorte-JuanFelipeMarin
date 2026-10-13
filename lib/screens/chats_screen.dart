import 'package:flutter/material.dart';
import '../widgets/chat_tile.dart';
import '../widgets/banner.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView( 
      
      children: const [
        MiBanner(
          titulo: 'Chats',
          descripcion: 'Habla con quien sea',
        ),
        ChatTile(nombre: 'Ana', mensaje: 'Hola'),
        ChatTile(nombre: 'Luis', mensaje: 'Chau'),
        ChatTile(nombre: 'Maria', mensaje: 'pasame la tarea xd'),
        ChatTile(nombre: 'Carlos', mensaje: 'Gracias'),
        ChatTile(nombre: 'Sofia', mensaje: 'OK'),
         ChatTile(nombre: 'Diego ', mensaje: 'hola linda'),
      ],
    );
  }
}