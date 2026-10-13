import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/chats_screen.dart';
import 'screens/laboratory_screen.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Principal());
  }
}

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int _seccion = 0;

  final List<Widget> _pantallas = const [
    HomeScreen(),
    ChatsScreen(),
    LaboratoryScreen(),
  ];

  final List<String> _titulos = const ['Estados', 'Chats', 'Lab'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        backgroundColor: const Color.fromARGB(255, 104, 208, 128),
      ),
      body: _pantallas[_seccion],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _seccion,
        backgroundColor: const Color.fromARGB(255, 248, 247, 247), // fondo de la barra
        selectedItemColor: const Color.fromARGB(255, 70, 155, 90), // color del ícono/texto activo
        unselectedItemColor: const Color.fromARGB(255, 103, 102, 102),
        onTap: (indice) {
          setState(() {
            _seccion = indice;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Estados'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.science), label: 'Lab'),
        ],
      ),
    );
  }
}
