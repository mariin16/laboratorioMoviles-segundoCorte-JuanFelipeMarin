import 'package:flutter/material.dart';


class ChatTile extends StatelessWidget {
  final String nombre;
  final String mensaje;
  

  const ChatTile({
    super.key,
    required this.nombre,
    required this.mensaje,
  
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(Icons.person, color: Colors.white),
          ),
          const SizedBox(width: 10),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(nombre,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(mensaje, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),

          
        ],
      ),
    );
  }
}