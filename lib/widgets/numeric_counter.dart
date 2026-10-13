import 'package:flutter/material.dart';

// Componente interactivo: contador.
class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  // Variable numérica que se modifica.
  int _cantidad = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Cuántos contactos quieres bloquear',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 20),

        // Valor actual.
        Text('$_cantidad', style: const TextStyle(fontSize: 60)),
        const SizedBox(height: 20),

        // Botones.
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => setState(() => _cantidad--),
              child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () => setState(() => _cantidad++),
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ],
    );
  }
}