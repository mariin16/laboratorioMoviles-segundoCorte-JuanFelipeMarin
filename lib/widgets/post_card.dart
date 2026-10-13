import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final String usuario;
  final String descripcion;

  const PostCard({
    super.key,
    required this.usuario,
    required this.descripcion,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  // Variable que indica si el botón fue presionado.
  bool _presionado = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 104, 208, 128),
                child: Icon(Icons.person, color: Colors.white),
              ),
              const SizedBox(width: 10),
              Text(widget.usuario,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 10),

          Image.network(
            'https://plus.unsplash.com/premium_photo-1710965560034-778eedc929ff?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),

          Text(widget.descripcion),
          const SizedBox(height: 5),

          Row(
            children: [
              // Botón que cambia de color al presionar.
              TextButton.icon(
                onPressed: () {
                  setState(() {
                    _presionado = !_presionado;
                  });
                },
                icon: Icon(
                  _presionado ? Icons.favorite : Icons.favorite_border,
                  color: _presionado
                      ? Colors.red
                      : const Color.fromARGB(255, 43, 119, 61),
                ),
                label: const Text(''),
              ),

              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.comment,
                    color: Color.fromARGB(255, 43, 119, 61)),
                label: const Text(''),
              ),
            ],
          ),
        ],
      ),
    );
  }
}